///scr_special_data_load( ioo, i );
ioo=argument0;
i=argument1;

switch(ioo.object_index){

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
ioo.selnumb=1;
break;

case obj_boat:
ioo.motors=real(ini_read_string("Map","motor"+string(i),0))
break;

case obj_water:
ioo.level=real(ini_read_string("Map","level"+string(i),4))
ioo.child=real(ini_read_string("Map","child"+string(i),0))
ioo.parent=real(ini_read_string("Map","parent"+string(i),0))
ioo.source=real(ini_read_string("Map","source"+string(i),1))
break;
case obj_other_player:
ioo.Username=ini_read_string("Map","Username"+string(i),"")
ioo.weapon_indexx=ini_write_string("Map","Weapon"+string(i),obj_sword_lvl0)
ioo.pant=ini_write_real("Map","Pant"+string(i),0)
ioo.head=ini_write_real("Map","Head"+string(i),0)
ioo.tail=ini_write_real("Map","Taio"+string(i),0)
ioo.body=ini_write_real("Map","Body"+string(i),0)
ioo.pcolour=ini_write_real("Map","PColour"+string(i),c_blue)
ioo.iae=ini_write_real("Map","iae"+string(i),0)
ioo.hjh=ini_write_real("Map","hjh"+string(i),0)
ioo.hkh=ini_write_real("Map","hkh"+string(i),0)
break;
}
