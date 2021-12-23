///scr_draw_item_npc_hand( radius, image_angle, scale, rotation, x, y );
radius=argument0
var rotatedX = argument4 + lengthdir_x(radius, argument1);
var rotatedY = argument5 + lengthdir_y(radius, argument1);
draw_sprite_ext
(control.sprites[slotid],0,rotatedX-2,rotatedY-2,argument2*dirofv,argument2,argument3,c_white,image_alpha);
lightning_draw_segment
(control.sprites[slotid],0,rotatedX-2,rotatedY-2,argument2*dirofv,argument2,argument3,c_black,image_alpha);
