///draw_9slice_ext( x, y, w, h, sprite_index, image_index );
// @param x
// @param y
// @param w
// @param h
// @param sprite
// @param subimg

//Args
var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _sprite = argument[4];
var _subimg = argument[5];
//var _thicc = argument[6];

//Data
var cellSize = round(sprite_get_width(_sprite)/4);

var mainW = _w - cellSize*2;
var mainH = _h - cellSize*2;

var mainScaleW = mainW/cellSize;
var mainScaleH = mainH/cellSize;

///Corners
//Top left
draw_sprite_part(_sprite, _subimg, 0, 0, cellSize, cellSize, _x, _y);
    
//Top Right
draw_sprite_part(_sprite, _subimg, cellSize*2, 0, cellSize, cellSize, (_x + _w) - cellSize, _y);
    
//Bottom left
draw_sprite_part(_sprite, _subimg, 0, cellSize*2, cellSize, cellSize, _x, (_y + _h) - cellSize);
    
//Bottom Right
draw_sprite_part(_sprite, _subimg, cellSize*2, cellSize*2, cellSize, cellSize, (_x + _w) - cellSize, (_y + _h) - cellSize);

///Other
//Center
draw_sprite_part_ext(_sprite, _subimg, cellSize, cellSize, cellSize, cellSize, _x + cellSize, _y + cellSize, mainScaleW, mainScaleH, -1, image_alpha);

//Top
draw_sprite_part_ext(_sprite, _subimg, cellSize, 0, cellSize, cellSize, _x + cellSize, _y, mainScaleW, 1, -1, image_alpha);
        
//Bottom
draw_sprite_part_ext(_sprite, _subimg, cellSize, cellSize*2, cellSize, cellSize, _x + cellSize, (_y + _h) - cellSize, mainScaleW, 1, -1, image_alpha);
        
//Left
draw_sprite_part_ext(_sprite, _subimg, 0, cellSize, cellSize, cellSize, _x, _y + cellSize, 1, mainScaleH, -1, image_alpha);
        
//Right
draw_sprite_part_ext(_sprite, _subimg, cellSize*2, cellSize, cellSize, cellSize, (_x + _w) - cellSize, _y + cellSize, 1, mainScaleH, -1, image_alpha);
