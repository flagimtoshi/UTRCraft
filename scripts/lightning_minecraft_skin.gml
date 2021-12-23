if distance_to_object(obj_light)<50{
dsttoli=distance_to_object(obj_light)/50
if instance_exists(obj_skybox_dtn){
//draw_sprite_ext(item_index,0,x,y,0.5,0.5,image_angle,c_black,((obj_skybox_dtn.time/360)*0.8)*dsttoli);
if dier=1{

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right arm



draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head side


draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
                                                                                               //Hat
draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);



draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right leg side



draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
//draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark

draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left leg front
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left leg side



draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//body side


draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);


mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark

mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left arm side





}else{

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right side


      
    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head side

    
    // Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
    
    //                                                                                                Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);
//2.5



    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//right leg side



    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark    
    
    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left leg side



    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//body side


    
    draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);


    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark
    

    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8)*dsttoli)//left arm side


}

}else{
//draw_sprite_ext(item_index,0,x,y,0.5,0.5,image_angle,c_black,((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli);
if dier=1{
mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right arm



draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head side


draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
                                                                                               //Hat
draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head side

draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);


draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right leg side



draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
//draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark

draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left leg front
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left leg side



draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//body side


draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);



mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark

mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left arm side





}else{

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right side


      
    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head side

    
    // Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
    
    //                                                                                                Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);
//2.5



    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//right leg side



    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark    
    
    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left leg side



    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//body side


    
    draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);




    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark
    

    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8)*dsttoli)//left arm side


}

}
}else{
dsttoli=0
if instance_exists(obj_skybox_dtn){
//draw_sprite_ext(item_index,0,x,y,0.5,0.5,image_angle,c_black,((obj_skybox_dtn.time/360)*0.8));

if dier=1{

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right arm



draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head side


draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
                                                                                               //Hat
draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);

draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right leg side



draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
//draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark

draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left leg front
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left leg side



draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//body side



draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);



mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark

mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left arm side





}else{

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right side


      
    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head side

    
    // Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
    
    //                                                                                                Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);
//2.5



    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//right leg side



    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark    
    
    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left leg side



    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//body side


    draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);
    


    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark
    

    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((obj_skybox_dtn.time/360)*0.8))//left arm side


}

}else{
//draw_sprite_ext(item_index,0,x,y,0.5,0.5,image_angle,c_black,((((360+(obj_skybox_ntd.time*-1)))/360)*0.8));
if dier=1{
mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

mouse_rott=point_direction(x,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new,0,36,52,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right side
draw_sprite_general(sprite0_new,0,36,52,4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right arm



draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

draw_sprite_general(sprite0_new,0,8,8,8,8,x+4*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head front
draw_sprite_general(sprite0_new,0,0,8,8,8,x-1*0.5,y,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head side


draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
                                                                                               //Hat
draw_sprite_general(sprite0_new,0,40,8,8,8,x+4*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head front
draw_sprite_general(sprite0_new,0,32,8,8,8,x-1*0.5,y-0.5*0.5,0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head side

draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);


draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

draw_sprite_general(sprite0_new,0,20,52,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right leg front
draw_sprite_general(sprite0_new,0,20,52,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right leg side



draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
//draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark

draw_sprite_general(sprite0_new,0,4,20,4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left leg front
draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(2.5)*0.5,y+(8+12)*0.5,0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left leg side



draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

draw_sprite_general(sprite0_new,0,20,20,8,12,x+2.5*0.5,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//body front
draw_sprite_general(sprite0_new,0,16,20,4,12,x,y+8*0.5,0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//body side


draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);



mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark

mouse_rot=point_direction(x+7.5-2.5+2.5,y+8,mouse_x,mouse_y)
draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x ,y+8*0.5 ,0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left arm front
draw_sprite_general(sprite0_new,0,44,20,-4,12,x,y+8*0.5,0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left arm side





}else{

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//right side
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black,0.25)//right arm dark

      mouse_rott=point_direction(x+7.5-2.5,y+8,mouse_x,mouse_y)
      draw_sprite_general(sprite0_new,0,36,52,4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right arm
      draw_sprite_general(sprite0_new,0,36,52,-4,12,x,y+8*0.5,-0.625*0.5,0.5,mouse_rott+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right side


      
    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark

    draw_sprite_general(sprite0_new,0,8,8,8,8,x-(1)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head front
    draw_sprite_general(sprite0_new,0,0,8,8,8,x+(4)*0.5+5*0.5,y,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head side

    
    // Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//head side
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black,0.25)//head side dark
    
    //                                                                                                Hat
    draw_sprite_general(sprite0_new,0,40,8,8,8,x-(1)*0.5+5*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head front
    draw_sprite_general(sprite0_new,0,32,8,8,8,x+9*0.5,y-0.5*0.5,-0.725*0.5,1.1*0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//head side


draw_sprite_ext(spr_hats,HATS,x+2,y+8.5*0.5,obj_player.dirofv/2,1/2,0,image_blend,image_alpha);
lightning_playerhats(HATS,0,c_black,1,obj_player.dirofv/2,x+2,y+8.5/2,spr_hats,0.5);
//2.5



    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//right leg side
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black,0.25)//right leg side dark

    draw_sprite_general(sprite0_new,0,20,52,4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right leg front
    draw_sprite_general(sprite0_new,0,20,52,-4,12,x+2.5*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,-legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//right leg side



    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,image_blend,image_blend,image_blend,image_blend,image_alpha)//left leg side
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black,0.25)//left leg side dark    
    
    draw_sprite_general(sprite0_new,0,4,20,4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left leg front
    //draw_sprite_general(sprite0_new,0,0,20,8,12,x,y+8+12,0.625*0.5,0.5,-legrot1,c_white,c_white,c_white,c_white,0.25)//left leg front light
    draw_sprite_general(sprite0_new,0,4,20,-4,12,x+(1.5+1+2.5)*0.5,y+(8+12)*0.5,-0.625*0.5,0.5,legrot1,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left leg side



    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)//body side
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black,0.25)//body side dark

    draw_sprite_general(sprite0_new,0,20,20,8,12,x+5*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//body front
    draw_sprite_general(sprite0_new,0,16,20,4,12,x+(2.5+5)*0.5,y+8*0.5,-0.625*0.5,0.5,0,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//body side


draw_sprite_ext(
spr_tails//sprite
,TAILS//index
,x-(2*obj_player.dirofv)+2//x pos
,y-1+10//y pos
,obj_player.dirofv/2 //scalex
,1/2//scaley
,obj_player.iae//point_direction(x,y,obj_player.x-(1*obj_player.dirofv),obj_player.y+obj_player.hspeed)//rotat
,image_blend//blend
,image_alpha//alpha
);
lightning_playerhats(TAILS,obj_player.iae,c_black,1/2,obj_player.dirofv/2,x-(2*obj_player.dirofv)+2,y-1+10,spr_tails,1/2);    


    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,image_blend,image_blend,image_blend,image_blend,image_alpha)//left arm side
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black,0.25)//left arm side dark
    

    mouse_rot=point_direction(x-2.5+2 ,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new ,0 ,44 ,20 ,4 ,12 ,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5 ,0.5 ,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left arm front
    //mouse_rott=point_direction(x+1.25,y+8,mouse_x,mouse_y)
    draw_sprite_general(sprite0_new,0,44,20,-4,12,x+(7.5-2.5+2.5)*0.5,y+8*0.5,-0.625*0.5,0.5,mouse_rot+90,c_black,c_black,c_black,c_black, ((((360+(obj_skybox_ntd.time*-1)))/360)*0.8))//left arm side


}
}
}

