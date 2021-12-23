/// bl_rectangle_draw(BL rectangle instance, DS grid, block x, block y, width, height, x, y, shading color)
// Draws the BL rectangle lighting.
// BL rectangle instance: The block lighting rectangle instance created with bl_rectangle_create.
// DS grid: A DS grid representing how the blocks are layed out over the rectangle. Each cell of the grid should be true if it's supposed to add to the shading, false otherwise.
//          Having values larger or equal to 1 is interpreted as true, and smaller or equal to 0 is interpreted as false. The size of the grid should be the same as the number of tiles horizontally or vertically in the BL rectangle.
// block x, block y: The position of the region within the grid to draw lighting for. Set this to undefined if you want to draw everything.
// width, height: The size of the region to draw lighting for. Set this to undefined if you want to draw everything.
// x, y: The position to draw the rectangle at (top left corner).
// shading color: The color of the lighting.

with (argument0) {
    if (is_undefined(argument2)) argument2 = 0;
    if (is_undefined(argument3)) argument3 = 0;
    if (is_undefined(argument4)) argument4 = blocks_horizontally;
    if (is_undefined(argument5)) argument5 = blocks_vertically;

    // sf_base holds pixels corresponding to blocks, where black pixels are blocks, and white pixels are no blocks.
    // If sf_base doesn't already exist, it is created and updated using the data in the DS grid.
    if (!surface_exists(sf_base)) {
        sf_base = surface_create(sf_width, sf_height);
        surface_set_target(sf_base);
            draw_enable_alphablend(false);
                draw_clear(c_white);
                var color_previous = draw_get_color();
                draw_set_color(c_black);
                for (var t_y = 0; t_y < sf_height; ++t_y) {
                    for (var t_x = 0; t_x < sf_width; ++t_x) {
                        if (argument1[# t_x, t_y]) draw_point(t_x, t_y);
                    }
                }
                draw_set_color(color_previous);
            draw_enable_alphablend(true);
        surface_reset_target();
        update_blur = true;
    }    
    
    // sf_blurred is used for types 2 to 6. holds the blurred version or the version with the edge removed.
    // This creates sf_blurred if it doesn't already exist and the BL rectangle type needs it.
    if (!surface_exists(sf_blurred) && (type >= 2 || type <= 6)) {
        sf_blurred = surface_create(sf_width, sf_height);
        update_blur = true;
    }
    
    // sf_temporary is used temporarily to blur.
    if (!surface_exists(sf_temporary) && (type >= 4 || type <= 6)) sf_temporary = surface_create(sf_width, sf_height);
    
    // Certain BL rectangle types needs another surface. Hard edge uses another one here which will hold a surface with the edge removed. Smooth edge will blur out the edge to a separate surface.
    if (update_blur) {
        update_blur = false;
        draw_enable_alphablend(false);
            if (type == 2 || type == 3) {
                surface_set_target(sf_blurred);
                    shader_set(sh_bl_remove_edge);
                        shader_set_uniform_f(global.__bl_uniform_sh_bl_remove_edge_texel_size, 1 / sf_width, 1 / sf_height);
                        draw_surface(sf_base, 0, 0);
                    shader_reset();
                surface_reset_target();
            } else {
                surface_set_target(sf_temporary);
                    shader_set(sh_bl_blur_x);
                        shader_set_uniform_f(global.__bl_uniform_sh_bl_blur_x_size, 1 / sf_width);
                        draw_surface(sf_base, 0, 0);
                    shader_reset();
                surface_reset_target();
                surface_set_target(sf_blurred);
                    shader_set(sh_bl_blur_y);
                        shader_set_uniform_f(global.__bl_uniform_sh_bl_blur_y_size, 1 / sf_height);
                        draw_surface(sf_temporary, 0, 0);
                    shader_reset();
                surface_reset_target();
            }
        draw_enable_alphablend(true);
    }
    
    // This draws the lighting and each BL rectangle type has its own piece of code. Every BL rectangle type uses a multiply blend mode to draw.
    switch (type) {
        case 0:
            texture_set_interpolation(true);
            draw_set_blend_mode_ext(bm_zero, bm_src_color);
                shader_set(sh_bl_draw);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_draw_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    draw_surface_part_ext(sf_base, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                shader_reset();
            draw_set_blend_mode(bm_normal);
            break;
            
        case 1:
            shader_set(sh_bl_bicubic);
                draw_set_blend_mode_ext(bm_zero, bm_src_color);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_texel_size, 1 / sf_width, 1 / sf_height);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    texture_set_interpolation(true);
                    draw_surface_part_ext(sf_base, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                draw_set_blend_mode(bm_normal);
            shader_reset();
            break;
            
        case 2:
            texture_set_interpolation(true);
            draw_set_blend_mode_ext(bm_zero, bm_src_color);
                shader_set(sh_bl_draw);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_draw_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    draw_surface_part_ext(sf_blurred, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                shader_reset();
            draw_set_blend_mode(bm_normal);
            break;
            
        case 3:
            shader_set(sh_bl_bicubic);
                draw_set_blend_mode_ext(bm_zero, bm_src_color);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_texel_size, 1 / sf_width, 1 / sf_height);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    texture_set_interpolation(true);
                    draw_surface_part_ext(sf_blurred, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                draw_set_blend_mode(bm_normal);
            shader_reset();
            break;
            
        case 4:
            texture_set_interpolation(true);
            draw_set_blend_mode_ext(bm_zero, bm_src_color);
                shader_set(sh_bl_draw);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_draw_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    draw_surface_part_ext(sf_blurred, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                shader_reset();
            draw_set_blend_mode(bm_normal);
            break;
            
        case 5:
            shader_set(sh_bl_bicubic);
                draw_set_blend_mode_ext(bm_zero, bm_src_color);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_texel_size, 1 / sf_width, 1 / sf_height);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_bicubic_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    texture_set_interpolation(true);
                    draw_surface_part_ext(sf_blurred, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                draw_set_blend_mode(bm_normal);
            shader_reset();
            break;
            
        case 6:
            texture_set_interpolation(false);
            draw_set_blend_mode_ext(bm_zero, bm_src_color);
                shader_set(sh_bl_draw);
                    shader_set_uniform_f(global.__bl_uniform_sh_bl_draw_color, color_get_red(argument8) / 255, color_get_green(argument8) / 255, color_get_blue(argument8) / 255, 1);
                    draw_surface_part_ext(sf_blurred, argument2, argument3, argument4, argument5, argument6, argument7, block_width, block_height, c_white, 1);
                shader_reset();
            draw_set_blend_mode(bm_normal);
            texture_set_interpolation(true);   
    }
}
