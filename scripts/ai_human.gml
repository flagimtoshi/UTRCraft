var ai;
if ai !=0{
if (datarget.x-x) < 0{if distance_to_object(datarget)>17{
if !(place_meeting(x-sped,y,obj_solid)or place_meeting(x-sped,y,obj_barrier)) x -= sped;//move=1;
}

dirofv = -1;
}

if (datarget.x-x) > 0{if distance_to_object(datarget)>17{
if !(place_meeting(x+sped,y,obj_solid)or place_meeting(x+sped,y,obj_barrier)) x += sped;//move=1;
}

dirofv = 1;
}
}
//y=floor(y)
/*if place_meeting(x+sped,y,obj_solid){
if place_meeting(x,y+1,obj_solid){
move_towards_point(x,y-10,10)
}
}
if place_meeting(x-sped,y,obj_solid){
if place_meeting(x,y+1,obj_solid){
move_towards_point(x,y-10,10)
}
}*/

//if distance_to_object(obj_player)>17{
//move_towards_point(datarget.x,y,sped)
//}else{
//hspeed=0

//}
iae=vspeed*7*(dirofv*-1)
y=floor(y)
if! place_free(x,y+1){//hspeed=0
if place_meeting(x+1,y,obj_solid) and place_meeting(x,y+8,obj_solid) and !place_meeting(x+1,y-8,obj_solid){
//hspeed=0
move_towards_point(x,y-10,2.5)
if (datarget.x-x) < 0{if distance_to_object(datarget)>17{
if !(place_meeting(x-sped,y,obj_solid)or place_meeting(x-sped,y,obj_barrier)) x -= sped;//move=1;
}

dirofv = -1;
}

if (datarget.x-x) > 0{if distance_to_object(datarget)>17{
if !(place_meeting(x+sped,y,obj_solid)or place_meeting(x+sped,y,obj_barrier)) x += sped;//move=1;
}

dirofv = 1;
}
}//y=floor(y)
//hspeed=0
}
if! place_free(x,y+1){
if place_meeting(x-1,y,obj_solid) and place_meeting(x,y+8,obj_solid) and !place_meeting(x-1,y-8,obj_solid){
//hspeed=0
move_towards_point(x,y-10,2.5)
if (datarget.x-x) < 0{if distance_to_object(datarget)>17{
if !(place_meeting(x-sped,y,obj_solid)or place_meeting(x-sped,y,obj_barrier)) x -= sped;//move=1;
}

dirofv = -1;
}

if (datarget.x-x) > 0{if distance_to_object(datarget)>17{
if !(place_meeting(x+sped,y,obj_solid)or place_meeting(x+sped,y,obj_barrier)) x += sped;//move=1;
}

dirofv = 1;
}
}//y=floor(y)
//hspeed=0
    
}
//render_ent(10);
show_world_around_entity(16, sprite_index);
/*if (datarget.x-x) < 0{if distance_to_object(obj_player)>17{
if !(place_meeting(x-sped,y,obj_solid)or place_meeting(x-sped,y,obj_barrier)) x -= sped;//move=1;
}

dirofv = -1;
}

if (datarget.x-x) > 0{if distance_to_object(obj_player)>17{
if !(place_meeting(x+sped,y,obj_solid)or place_meeting(x+sped,y,obj_barrier)) x += sped;//move=1;
}

dirofv = 1;
}
}//y=floor(y)
