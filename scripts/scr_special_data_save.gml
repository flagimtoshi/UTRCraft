///scr_special_data_save( i, inst )

i=argument0;
inst=argument1;

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

case obj_goldchest:
ini_write_string("Map","slotnumber"+string(i),string(inst.slotnumber));
fhf=inst.selnumb
inst.selnumb=1;
repeat(inst.slotnumber){
ini_write_string("Map","itemid"+string(inst.selnumb)+string(i),inst.itemid[inst.selnumb])
ini_write_string("Map","itemcount"+string(inst.selnumb)+string(i),inst.counti[inst.selnumb])
inst.selnumb+=1;
}
inst.selnumb=fhf
break;

case obj_boat:
ini_write_string("Map","motor"+string(i),inst.motors)
//ini_write_string("Map","name"+string(i),inst.npcname)
//ini_write_string("Map","HP"+string(i),inst.hp)
break;

case obj_water:
ini_write_string("Map","level"+string(i),inst.level)
ini_write_string("Map","child"+string(i),inst.child)
ini_write_string("Map","parent"+string(i),inst.parent)
ini_write_string("Map","source"+string(i),inst.source)
break;

default:
ini_write_string("Map","Error"+string(i),"This is an Error")
break;
}
