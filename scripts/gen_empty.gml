if Loaded=1{
exit;
}

instance_create(obj_player.x,obj_player.y+16,obj_stone)

give(obj_item_workbench)
instance_activate_all();
instance_destroy();

