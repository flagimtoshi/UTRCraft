///get_mouse_pos( x or y );
if os_type=os_windows {
if ! (gamepad_is_connected(0) and instance_exists(obj_controller_cursor)){

   if argument0="x"{
      return mouse_x;
   }
   
   if argument0="y"{
      return mouse_y;
   }
   
}else{

   if argument0="x"{
      return obj_controller_cursor.x;
   }
   
   if argument0="y"{
      return obj_controller_cursor.y;
   }
   
}
}else{

if instance_exists(obj_finger){

    if argument0="x"{
      return obj_finger.x;
   }
   
   if argument0="y"{
      return obj_finger.y;
   }

}

}
