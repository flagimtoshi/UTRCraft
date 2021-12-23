///scr_build_struc_from_file( x, y, filename );
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
var pxx, pyy;
i=wallins
while (i>0){
xx=ini_read_real("Map","wallx"+string(i),0)
yy=ini_read_real("Map","wally"+string(i),0)

pxx=ini_read_real("Map","wallx"+string(i-1),0)
pyy=ini_read_real("Map","wally"+string(i-1),0)


insts=ini_read_real("Map","wallprp"+string(i),0)
kjkj=BlockSave[insts];
instance_activate_region(xxx+pxx-8,yyy+pyy-8,xxx+pxx+16,yyy+pyy+16,1)
isnsn=instance_place(xxx+xx,yyy+yy,obj_solid)
if ! (i==wallins)
{
if place_meeting(xxx+xx,yyy+yy,isnsn){
//structure_generating=1
//uii=uC
//uC=0
//instance_activate_object(obj_solid)

//instance_activate_region(xxx+xx-8,yyy+yy-8,xxx+xx+16,yyy+yy+16,1);
//instance_destroy(isnsn,false)
//
//isnsn=instance_place(x,y,solid)
instance_activate_region(xxx+pxx-8,yyy+pyy-8,xxx+pxx+16,yyy+pyy+16,1);
instance_create(xxx+pxx,yyy+pyy,obj_nova_des);
//instance_create(xxx+pxx,yyy+pyy,obj_item_des);

//uC=uii

}else{
//if ! obj_non_solid=object_get_parent(kjkj){
//instance_create(xxx+xx,yyy+yy,obj_solid);
//}
instance_activate_region(xxx+pxx-8,yyy+pyy-8,xxx+pxx+16,yyy+pyy+16,1);
instance_create(xxx+pxx,yyy+pyy,obj_nova_des);
//instance_create(xxx+pxx,yyy+pyy,obj_item_des);
ioo=instance_create(xxx+xx,yyy+yy,kjkj);
}
}else{
instance_activate_region(xxx+xx-8,yyy+yy-8,xxx+xx+16,yyy+yy+16,1);
instance_create(xxx+pxx,yyy+pyy,obj_nova_des);
//instance_create(xxx+pxx,yyy+pyy,obj_item_des);
}
//ioo.blockindex=kjkj

i-=1;
}
//structure_generating=0;
ini_close();
