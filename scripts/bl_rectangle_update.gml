/// bl_rectangle_update(BL rectangle instance, DS grid, block x, block y, width, height)
// Updates the surface values over a specified region of the BL rectangle.
// BL rectangle instance: The block lighting rectangle instance created with bl_rectangle_create.
// DS grid: A DS grid representing how the blocks are layed out over the rectangle. Each cell of the grid should be true if it's supposed to add to the shading, false otherwise.
//          Having values larger or equal to 1 is interpreted as true, and smaller or equal to 0 is interpreted as false. The size of the grid should be the same as the number of tiles horizontally or vertically in the BL rectangle.
// block x, block y: The position of the region within the grid to update.
// width, height: The size of the region to update.

with (argument0) {
    // If sf_base exist, this will draw black (for blocks) or white (for no blocks) onto the surface in the specified region corresponding to the blocks.
    if (surface_exists(sf_base)) {
        draw_enable_alphablend(false);
            surface_set_target(sf_base);
                var t_x, t_y, t_x_end = argument2 + argument4, t_y_end = argument3 + argument5;
                for (t_y = argument3; t_y < t_y_end; ++t_y) {
                    for (t_x = argument2; t_x < t_x_end; ++t_x) {
                        if (argument1[# t_x, t_y]) draw_point_color(t_x, t_y, c_black);
                        else draw_point_color(t_x, t_y, c_white);
                    }
                }
            surface_reset_target();
        draw_enable_alphablend(true);
        if (type >= 2 && type <= 6) update_blur = true;
    }
}
