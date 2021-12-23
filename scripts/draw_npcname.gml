///draw_npcname();
///Draw name
npcname=argument0;

if 1=1{//NameShow=1{
if obj_hp.visible=1{

draw_set_font(fnt_pixels)
draw_set_colour(c_ltgray)
draw_set_halign(fa_center)
//draw_sprite_ext(spr_rectangle,0,x,y-16,string_length(npcname)*1,0.75,0,image_blend,0.5)
draw_set_alpha(0.5);
draw_rectangle_colour(x-string_length(npcname)-4,y-10,x+string_length(npcname)+3,y-16,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);

draw_text_transformed(x,y-14,npcname,0.4,0.4,0)
draw_set_halign(fa_left)
draw_set_colour(c_white)
}else{
//nothin
}


}
