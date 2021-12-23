///normal render for the player cam
if ! uC=0 or structure_generating=0{
    instance_deactivate_object(obj_torch);
    //instance_deactivate_object(obj_cactus);
    //instance_deactivate_object(obj_entity); //              legacy feature
    //instance_deactivate_object(obj_item);
    //instance_deactivate_object(obj_mob);
    //instance_deactivate_object(obj_water);
    instance_deactivate_object(obj_non_solid);

    //instance_deactivate_object(obj_torchlight);
    //instance_deactivate_object(obj_camplight);
    //instance_deactivate_object(obj_furnace_light);
    instance_deactivate_object(obj_solid);
    instance_deactivate_object(obj_snow_layer);
    }


if uC = 1
{


instance_activate_region(view_xview[0]-(2*8), view_yview[0]-(2*8), view_wview+(2*8), view_hview+(2*8), true);
}else{
    if uC = 2
{



instance_activate_region((x-(7*8)),  (y-(7*8)), (14*8), (14*8), true);
}else{
    if uC = 3
{



instance_activate_region((x-(10*8)),  (y-(10*8)), (20*8), (20*8), true);
}else{
    if uC = 4
{



instance_activate_region((x-(15*8)),  (y-(15*8)), (30*8), (30*8), true);
}else{
    if uC = 5
{



instance_activate_region((x-(20*8)),  (y-(20*8)), (40*8), (40*8), true);
}else{
if (uC = 0) or (structure_generating=1){
    if!instance_activate_all(){
    instance_activate_all()
    }}
}
}
}
}
}

instance_activate_object(obj_cave_med)
instance_activate_object(obj_human)
instance_activate_object(obj_mob)
instance_activate_object(obj_structure_block)
