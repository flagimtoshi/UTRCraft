if (1==0){
point_mous=point_direction(x,y,mx,my)
}else{
point_mous=point_direction(x,y,x,y+8)
}
//legs
draw_sprite_ext(spr_claudia_legs,outfit,x,y+4*image_ysize,image_xsize*dirofv,image_ysize,legrot,image_blend,image_alpha)
draw_sprite_ext(spr_claudia_legs,outfit,x,y+4*image_ysize,image_xsize*dirofv,image_ysize,legrot,c_black,0.25)
lightning_draw_segment(spr_claudia_legs,outfit,x,y+4*image_ysize,image_xsize*dirofv,image_ysize,legrot,c_black,image_alpha)

draw_sprite_ext(spr_claudia_legs,outfit,x,y+4*image_ysize,image_xsize*dirofv,image_ysize,-legrot,image_blend,image_alpha)
lightning_draw_segment(spr_claudia_legs,outfit,x,y+4*image_ysize,image_xsize*dirofv,image_ysize,-legrot,c_black,image_alpha)


//left arm
draw_sprite_ext(spr_claudia_arms,outfit,x,y-6*image_ysize,image_xsize*dirofv,image_ysize,-legrot*0.5-(bodyrot*0.8999)*dirofv,image_blend,image_alpha)
draw_sprite_ext(spr_claudia_arms,outfit,x,y-6*image_ysize,image_xsize*dirofv,image_ysize,-legrot*0.5-(bodyrot*0.8999)*dirofv,c_black,0.25)
lightning_draw_segment(spr_claudia_arms,outfit,x,y-6*image_ysize,image_xsize*dirofv,image_ysize,-legrot*0.5-(bodyrot*0.8999)*dirofv,c_black,image_alpha)

//body
draw_sprite_ext(spr_claudia_body,outfit,x,y-8*image_ysize,image_xsize*dirofv,image_ysize,((bodyrot/4)*dirofv),image_blend,image_alpha)
lightning_draw_segment(spr_claudia_body,outfit,x,y-8*image_ysize,image_xsize*dirofv,image_ysize,((bodyrot/4)*dirofv),c_black,image_alpha)



//tail
iae=(vspeed*7*(dirofv*-1))+bodyrot*dirofv


draw_sprite_ext(
spr_claudia_tail//sprite
,outfit//index
,x-(dirofv)*image_xsize//x pos
,y+4*image_ysize//y pos
,dirofv*image_xsize //scalex
,image_ysize//scaley
,iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_draw_segment(
spr_claudia_tail//sprite
,outfit//index
,x-(dirofv)*image_xsize//x pos
,y+4*image_ysize//y pos
,dirofv*image_xsize //scalex
,image_ysize//scaley
,iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,c_black//blend
,image_alpha//alpha
);









point_mousee=point_direction(x,y,x+(100*dirofv),my)

//head
draw_sprite_ext(spr_claudia_head,outfit,x,y-7*image_ysize,  image_xsize,  image_ysize*dirofv,
(((legrot*00.05)*dirofv)+0)+(point_mousee)//2)*dirofv
,image_blend,image_alpha)
lightning_draw_segment(spr_claudia_head,outfit,x,y-7*image_ysize,  image_xsize,  image_ysize*dirofv,
(((legrot*00.05)*dirofv)+0)+(point_mousee)//2)*dirofv
,c_black,image_alpha)


//right arm
//draw_sprite_ext(obj_item_controller.items[item_index],image_index,x,y-6*image_ysize,image_xsize,image_ysize*dirofv,(((legrot*0.5+(bodyrot*0.8999)*dirofv)/2))+point_mouse,image_blend,image_alpha)
draw_sprite_ext(spr_claudia_arms,outfit,x,y-6*image_ysize,image_xsize*dirofv,image_ysize,(((legrot*0.5+(bodyrot*0.8999)*dirofv)/2)+90)+point_mous,image_blend,image_alpha)
lightning_draw_segment(spr_claudia_arms,outfit,x,y-6*image_ysize,image_xsize*dirofv,image_ysize,(((legrot*0.5+(bodyrot*0.8999)*dirofv)/2)+90)+point_mous,c_black,image_alpha)

