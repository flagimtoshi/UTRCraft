var file;
if argument0=0{
file="world1.wrld"
}else{
file=argument0
}

if ! file=""{
ini_open(file)
//UTRCRAFT VERSION
ini_write_string("Game","version",UTRCraftVersion)

//Player
ini_write_real("Player","posX",obj_player.x)
ini_write_real("Player","posY",obj_player.y)
//Sky
//ini_write_real("World","posX",sx)
//ini_write_real("World","posY",sy)

//walls
var wallinst;
wallinst=instance_number(obj_map_saves)
var i;
i=wallinst
while (i>0){

inst=instance_find(obj_map_saves,wallinst-i)
ini_write_real("Map","wallx"+string(i),inst.x)
ini_write_real("Map","wally"+string(i),inst.y)
kk=BlockSave;
gggggg=findIndex(kk, inst.object_index);
ini_write_real("Map","wallprp"+string(i),gggggg)
//pop=object_get_parent(inst.object_index)
//if pop=obj_solid{
//                                        switch block saves NBT
scr_special_data_save(i,inst);

/*if (obj_item=object_get_parent(inst.object_index)){
ini_write_real("Map","wallindA"+string(i),inst.item_index)
ini_write_real("Map","wallindB"+string(i),inst.index)
}*/
//}
i-=1
}
//wall objs
ini_write_real("Extras","Walls",(wallinst))

ini_write_real("In1","slot0",inv[0,0])
ini_write_real("In2","slot0",inv[0,1])

ini_write_real("In1","slot1",inv[1,0])
ini_write_real("In2","slot1",inv[1,1])

ini_write_real("In1","slot2",inv[2,0])
ini_write_real("In2","slot2",inv[2,1])

ini_write_real("In1","slot3",inv[3,0])
ini_write_real("In2","slot3",inv[3,1])

ini_write_real("In1","slot4",inv[4,0])
ini_write_real("In2","slot4",inv[4,1])

ini_write_real("In1","slot5",inv[5,0])
ini_write_real("In2","slot5",inv[5,1])

ini_write_real("In1","slot6",inv[6,0])
ini_write_real("In2","slot6",inv[6,1])

ini_write_real("In1","slot7",inv[7,0])
ini_write_real("In2","slot7",inv[7,1])

ini_write_real("In1","slot8",inv[8,0])
ini_write_real("In2","slot8",inv[8,1])

// Player stats
ini_write_real("Player","Health",obj_player.HP)
ini_write_real("Player","Hunger",obj_player.Hunger)
ini_write_real("Player","Energie",obj_player.Mana)
ini_write_real("Player","Shield",obj_player.shield)
ini_write_real("Player","Melee",weapon_index)
ini_write_real("Player","Cold",obj_player.cold)

if instance_exists(obj_skybox_dtn){
ini_write_real("World","Time",obj_skybox_dtn.time)
ini_write_string("World","Sky","day")
}else{
ini_write_real("World","Time",obj_skybox_ntd.time)
ini_write_string("World","Sky","night")
}
ini_close();
if file_exists(file){
if argument0=0{
//show_message("Your Map has been saved!")
}
}
}
