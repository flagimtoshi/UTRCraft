var file = argument0;

if file=0{
get_save_filename(""
//"structure|*.struct"
,"test.struct");
}
if file_exists(file){
file_delete(file)
}
ini_open(file);
var wallinst;
wallinst=instance_number(obj_Block_id_ding);
ini_write_real("Extras","Walls",wallinst);
var i;
i=wallinst
while (i>0){
                  uiouio=instance_find(obj_Block_id_ding,wallinst-i)
                  inst=uiouio.idd//instance_find(obj_Block_id_ding,wallinst-i)
                  
ini_write_real("Map","wallx"+string(i),(uiouio.x-obj_structure_pivot.x)/4)
ini_write_real("Map","wally"+string(i),(uiouio.y-obj_structure_pivot.y)/4)

kk=BlockSave;
                  gggggg=inst//findIndex(kk, inst);//.object_index);
ini_write_real("Map","wallprp"+string(i),gggggg)

                  scr_special_data_save_struc(i,inst);
                  
//pop=object_get_parent(inst.object_index)
//if pop=obj_solid{
//                                        switch block saves NBT
/*switch(inst.object_index){

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
}*/

/*if (obj_item=object_get_parent(inst.object_index)){
ini_write_real("Map","wallindA"+string(i),inst.item_index)
ini_write_real("Map","wallindB"+string(i),inst.index)
}*/
//}
i-=1
}
ini_close();
