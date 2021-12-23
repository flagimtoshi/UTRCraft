var file = argument2;
var yyy = argument1;
var xxx = argument0;
ini_open(file);
ini_read_real("Extras","Walls",instance_number(obj_Block_id_ding));
var i;
i=wallinst
while (i>0){

inst=instance_find(obj_Block_id_ding,wallinst-i)
ini_write_real("Map","wallx"+string(i),(inst.x-obj_structure_pivot.x)/4)
ini_write_real("Map","wally"+string(i),(inst.y-obj_structure_pivot.y)/4)
kk=BlockSave;
gggggg=findIndex(kk, inst.object_index);
ini_write_real("Map","wallprp"+string(i),gggggg)
//pop=object_get_parent(inst.object_index)
//if pop=obj_solid{
//                                        switch block saves NBT
switch(inst.object_index){

case obj_custom_block:
ini_write_string("Map","LinkToImage"+string(i),inst.OnlineTextureLink)
break;

case obj_claudia:
ini_write_string("Map","outfit"+string(i),inst.outfit)
ini_write_string("Map","name"+string(i),inst.npcname)
ini_write_string("Map","HP"+string(i),inst.hp)
break;

case obj_chest:
ini_write_string("Map","itemid"+string(i),inst.itemid)
ini_write_string("Map","itemcount"+string(i),inst.counti)
break;

case obj_prop:
ini_write_string("Map","x"+string(i),inst.x)
ini_write_string("Map","y"+string(i),inst.y)
ini_write_string("Map","rotation"+string(i),inst.image_angle)
ini_write_string("Map","image"+string(i),inst.sprite_index)
ini_write_string("Map","xsize"+string(i),inst.image_xscale)
ini_write_string("Map","ysize"+string(i),inst.image_yscale)
break;
}

/*if (obj_item=object_get_parent(inst.object_index)){
ini_write_real("Map","wallindA"+string(i),inst.item_index)
ini_write_real("Map","wallindB"+string(i),inst.index)
}*/
//}
i-=1
}
ini_close();
