///check_blocks_placed();
op=argument0;
switch(op.object_index){

case obj_bullet :
     op.direction=obj_hand.image_angle;
     op.x=obj_player.x//+lengthdir_x(16,op.direction);
     op.y=obj_player.y//+lengthdir_y(16,op.direction);
     op.par=obj_player;
break;

}
