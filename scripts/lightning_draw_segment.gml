#define lightning_draw_segment
///lightning_draw_segment( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
__timelength=360
if distance_to_object(obj_light)<50{
dsttoli=distance_to_object(obj_light)/50
if instance_exists(obj_skybox_dtn){
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(obj_skybox_dtn.time/__timelength)*0.8*argument8*dsttoli);
}else{
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument8*dsttoli);
}
}else{
dsttoli=0
if instance_exists(obj_skybox_dtn){
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(obj_skybox_dtn.time/__timelength)*0.8*argument8);
}else{
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument8);
}
}




#define lightning_draw_segment_simplefied
///lightning_draw_segment_simplefied( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );

__timelength=360
if distance_to_object(obj_light)<50{
dsttoli=distance_to_object(obj_light)/50
if instance_exists(obj_skybox_dtn){
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(obj_skybox_dtn.time/__timelength)*0.8*argument8*dsttoli);
}else{
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument8*dsttoli);
}
}else{
dsttoli=0
if instance_exists(obj_skybox_dtn){
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(obj_skybox_dtn.time/__timelength)*0.8*argument8);
}else{
draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,(((__timelength+(obj_skybox_ntd.time*-1)))/__timelength)*0.8*argument8);
}
}