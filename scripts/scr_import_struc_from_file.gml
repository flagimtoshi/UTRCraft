///scr_import_struc_from_file( x, y, filename );
var xxx = argument0;
var yyy = argument1;
var file = argument2;
if file=0{
get_open_filename(""
//"structure|*.struct"
,"test.struct");
}
ini_open(file);
wallins=ini_read_real("Extras","Walls",0)
//walls
var i;
var xx, yy;
i=wallins
while (i>0){
xx=4*ini_read_real("Map","wallx"+string(i),0)
yy=4*ini_read_real("Map","wally"+string(i),0)
insts=ini_read_real("Map","wallprp"+string(i),0)
//kjkj=BlockSave[insts];
ioo=instance_create(xxx+xx,yyy+yy,obj_Block_id_ding)
scr_special_data_load_struc(ioo, i);
ioo.idd=insts
i-=1;
/*switch(ioo.object_index){

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

}
 */
}
ini_close();
