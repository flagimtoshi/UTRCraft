///scr_special_data_load( i, ioo );
ioo=argument0;
i=argument1;

switch(ioo){//(BlockSave[ioo]){

case obj_custom_block:
ioo.OTL=ini_read_string("Map","LinkToImage"+string(i),"");
break;

case obj_claudia:
ioo.outfit=ini_read_string("Map","outfit"+string(i),0)
ioo.npcname=ini_read_string("Map","name"+string(i),"")
ioo.hp=real(ini_read_string("Map","HP"+string(i),20))
break;

case obj_chest:
ioo.itemid=real(ini_read_string("Map","itemid"+string(i),0))
ioo.counti=real(ini_read_string("Map","itemcount"+string(i),0))
break;

case obj_goldchest:
ioo.slotnumber=real(ini_read_string("Map","slotnumber"+string(i),0))
ioo.selnumb=ioo.slotnumber;
repeat(ioo.slotnumber){
ioo.itemid[ioo.selnumb]=real(ini_read_string("Map","itemid"+string(ioo.selnumb)+string(i),0))
ioo.counti[ioo.selnumb]=real(ini_read_string("Map","itemcount"+string(ioo.selnumb)+string(i),0))
ioo.selnumb-=1;
}
ioo.selnumb=1//real(ini_read_string("Map","selnumb"+string(i),0));
break;

case obj_boat:
ioo.motors=real(ini_read_string("Map","motor"+string(i),0))
break;

default:
break;
}
