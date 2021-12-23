/// bl_init()
// Initializes 2D Block Lighting.

// Defines some variables for shader uniforms.
global.__bl_uniform_sh_bl_remove_edge_texel_size = shader_get_uniform(sh_bl_remove_edge, "texel_size");
global.__bl_uniform_sh_bl_blur_x_size = shader_get_uniform(sh_bl_blur_x, "size");
global.__bl_uniform_sh_bl_blur_y_size = shader_get_uniform(sh_bl_blur_y, "size");
global.__bl_uniform_sh_bl_bicubic_texel_size = shader_get_uniform(sh_bl_bicubic, "texel_size");
global.__bl_uniform_sh_bl_bicubic_color = shader_get_uniform(sh_bl_bicubic, "color");
global.__bl_uniform_sh_bl_draw_color = shader_get_uniform(sh_bl_draw, "color");
