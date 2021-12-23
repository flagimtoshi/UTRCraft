image_speed=0;
if instance_exists(obj_solid){
   orem=instance_nearest(x,y+8,obj_solid);
   if orem.sprite_index=ore{
      sprite_index=spr_stone;
   }else{
         sprite_index=orem.sprite_index;
   }
}else{
      sprite_index=spr_stone;
}

mask_index=sprite_index;
