///The very basic anticheat
var timeeer=60//900;

if (vspeed<-2.5){
if os_type=os_windows{
show_message("Timeout: Jump height irregular");}
game_end();
}

if (!place_meeting(x,y+1,obj_solid) and (vspeed=0)){
//if os_type=os_windows{
//show_message("Flying");}
timeeer-=30
}else{
timeeer=60
}

if timeeer=0{
if os_type=os_windows{
show_message("Timeout: Flying");}
game_end();
}
