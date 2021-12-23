// redner_ent( size of chunk );

if distance_to_object(obj_player)<100 and global.entrendertimeout=0{
instance_activate_region(x-argument0,  y-argument0, x+8+argument0, y+8+argument0, true);
}else{
if global.entrendertimeout=0{
instance_deactivate_object(self);
}else{
instance_activate_object(self)
}
}
