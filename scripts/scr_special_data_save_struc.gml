#define scr_special_data_save_struc
///scr_special_data_save( i, inst, Block ID Ding )

i=argument0;
inst=argument1;
uiouio_=argument2;
instconv=BlockSave[inst]
switch(instconv){

case obj_custom_block:
ini_write_string("Map","LinkToImage"+string(i),uiouio_.OnlineTextureLink)
break;

case obj_claudia:
ini_write_string("Map","outfit"+string(i),uiouio_.outfit)
ini_write_string("Map","name"+string(i),uiouio_.npcname)
ini_write_string("Map","HP"+string(i),uiouio_.hp)
break;

case obj_chest:
ini_write_string("Map","itemid"+string(i),uiouio_.itemid)
ini_write_string("Map","itemcount"+string(i),uiouio_.counti)
break;

case obj_prop:
ini_write_string("Map","x"+string(i),uiouio_.x)
ini_write_string("Map","y"+string(i),uiouio_.y)
ini_write_string("Map","rotation"+string(i),uiouio_.image_angle)
ini_write_string("Map","image"+string(i),uiouio_.sprite_index)
ini_write_string("Map","xsize"+string(i),instconv.image_xscale)
ini_write_string("Map","ysize"+string(i),uiouio_.image_yscale)
break;

case obj_goldchest:
ini_write_string("Map","slotnumber"+string(i),string(uiouio_.slotnumber));
ini_write_string("Map","selnumb"+string(i),string(uiouio_.selnumb));
var fhf = 0;
fhf=uiouio_.selnumb;
uiouio_.selnumb=0;
repeat(uiouio_.slotnumber){
ini_write_string("Map","itemid"+string(uiouio_.selnumb)+string(i),uiouio_.itemid[uiouio_.selnumb])
ini_write_string("Map","itemcount"+string(uiouio_.selnumb)+string(i),uiouio_.counti[uiouio_.selnumb])
uiouio_.selnumb+=1;
}
uiouio_.selnumb=fhf
break;

case obj_boat:
ini_write_string("Map","motor"+string(i),uiouio_.motors)
//ini_write_string("Map","name"+string(i),instconv.npcname)
//ini_write_string("Map","HP"+string(i),instconv.hp)
break;

default:
//ini_write_string("Map","Error"+string(i),"This is an Error: Unkown Object:"+string(uiouio_))
break;
}

#define scr_create_vars_struc_edit
switch (BlockSave[idd]){
       case obj_chest:
       itemid=0;
       counti=0;
       break;
       
       case obj_custom_block:
       OnlineTextureLink=""
       break;
       
       case obj_claudia:
       outfit=2;
       npcname="Claudia";
       hp=20;
       break;
       
       case obj_prop:
       image_angle=0
       sprite_index=0
       image_xscale=1
       image_yscale=1
       break;

       case obj_goldchest:
       slotnumber=7;
       selnumb=0;
       fhf=selnumb;
       repeat(slotnumber){
       itemid[selnumb]=0;
       counti[selnumb]=0;
       selnumb+=1;
       }
       selnumb=fhf;
       break;

       case obj_boat:
       motors=0;
       npcname="Boat";
       hp=20;
       break;
}