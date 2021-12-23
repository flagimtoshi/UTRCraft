///scr_special_data_save( i, inst )

i=argument0;
inst=argument1;
instconv=BlockSave[inst]
switch(instconv){

case obj_custom_block:
ini_write_string("Map","LinkToImage"+string(i),instconv.OnlineTextureLink)
break;

case obj_claudia:
ini_write_string("Map","outfit"+string(i),instconv.outfit)
ini_write_string("Map","name"+string(i),instconv.npcname)
ini_write_string("Map","HP"+string(i),instconv.hp)
break;

case obj_chest:
ini_write_string("Map","itemid"+string(i),instconv.itemid)
ini_write_string("Map","itemcount"+string(i),instconv.counti)
break;

case obj_prop:
ini_write_string("Map","x"+string(i),instconv.x)
ini_write_string("Map","y"+string(i),instconv.y)
ini_write_string("Map","rotation"+string(i),instconv.image_angle)
ini_write_string("Map","image"+string(i),instconv.sprite_index)
ini_write_string("Map","xsize"+string(i),instconv.image_xscale)
ini_write_string("Map","ysize"+string(i),instconv.image_yscale)
break;

case obj_goldchest:
ini_write_string("Map","slotnumber"+string(i),string(instconv.slotnumber));
fhf=instconv.selnumb
instconv.selnumb=1;
repeat(instconv.slotnumber){
ini_write_string("Map","itemid"+string(instconv.selnumb)+string(i),instconv.itemid[instconv.selnumb])
ini_write_string("Map","itemcount"+string(instconv.selnumb)+string(i),instconv.counti[instconv.selnumb])
instconv.selnumb+=1;
}
instconv.selnumb=fhf
break;

case obj_boat:
ini_write_string("Map","motor"+string(i),instconv.motors)
//ini_write_string("Map","name"+string(i),instconv.npcname)
//ini_write_string("Map","HP"+string(i),instconv.hp)
break;

default:
ini_write_string("Map","Error"+string(i),"This is an Error: Unkown Object:"+string(instconv))
break;
}
