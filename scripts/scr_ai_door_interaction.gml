///scr_ai_door_interaction();

if place_meeting(x+3*dirofv,y,obj_door_close){
door_=instance_nearest(x+3*dirofv,y,obj_door_close);
with(door_){
activated=1;
}
}
