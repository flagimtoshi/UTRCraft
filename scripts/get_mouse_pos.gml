///get_mouse_pos( x or y );
if ! gamepad_is_connected(0){

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
