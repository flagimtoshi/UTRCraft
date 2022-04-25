#define ligt
///ligt(image_index); used to light backgrounds


lightning_draw_segment(sprite_index,argument0,x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha);





#define ligt_ext



lightning_draw_segment(sprite_index,argument0,argument1,argument2,argument3,argument4,image_angle,c_black,image_alpha);


#define ligt_tiled_ext

//lightning_draw_segment(sprite_index,argument0,argument1,argument2,argument3,argument4,image_angle,c_black,image_alpha);
__timelength=360

if instance_exists(obj_skybox_dtn){
draw_sprite_tiled_ext(argument0,argument1,argument2,argument3,argument4,argument5,c_black,(obj_skybox_dtn.time/__timelength)*0.8*argument6);
}else{
draw_sprite_tiled_ext(argument0,argument1,argument2,argument3,argument4,argument5,c_black,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument6);
}


#define ligt_all



//lightning_draw_segment(sprite_index,argument0,argument1,argument2,argument3,argument4,argument5,c_black,argument6);
__timelength=360
if instance_exists(obj_skybox_dtn){
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,c_black,(obj_skybox_dtn.time/__timelength)*0.8*argument7);
}else{
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,c_black,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument7);
}