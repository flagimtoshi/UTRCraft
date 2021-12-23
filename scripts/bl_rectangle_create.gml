/// bl_rectangle_create(blocks horizontally, blocks vertically, block width, block height, type)
// Creates a BL (block lighting) rectangle. Returns its instance id.
// blocks horizontally: The width of the rectangle in blocks. How many blocks the rectangle can have horizontally.
// blocks vertically: The height of the rectangle in blocks. How many blocks the rectangle can have vertically.
// block width, block height: The size of the blocks. For example 16, 16.
// type: The type of BL rectangle. 0: Bilinear block glow. 1: Bicubic block glow. 2: Hard edge with bilinear interpolation. 3: Hard edge with bicubic interpolation.
//       4: Smooth edge with bilinear interpolation. 5: Smooth edge with bicubic interpolation. 6: Smooth edge with nearest neighbor interpolation.
//       For block glow and hard edge bicubic is nice, but it's not very noticeable with a smooth edge, in which case you should use bilinear since it's much faster (type 4).

var instance = instance_create(0, 0, obj_bl_rectangle);

with (instance) {
    sf_width = argument0; sf_height = argument1;
    block_width = argument2; block_height = argument3;
    type = argument4;
    
    // sf_base holds pixels corresponding to blocks, where black pixels are blocks, and white pixels are no blocks.
    // sf_blurred is used for types 2 to 6. holds the blurred version or the version with the edge removed.
    // sf_temporary is used temporarily to blur.
    sf_base = -1; sf_blurred = -1; sf_temporary = -1;
    
    update_blur = false;
}

return instance;
