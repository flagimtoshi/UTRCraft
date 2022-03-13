#define scr_saves
//just the header

#define scr_save_map
var file;
if argument0=""{
file="RND"
}else{
file=argument0
}
if file_exists("Saves\"+file+"\world.wrld"){
file_delete("Saves\"+file+"\world.wrld")
}
if ! file=""{
ini_open("Saves\"+file+"\world.wrld")
//UTRCRAFT VERSION
ini_write_string("Game","version",UTRCraftVersion)

//Player
ini_write_real("Player","posX",obj_player.x);
ini_write_real("Player","posY",obj_player.y);

ini_write_real("Player","spwnX",obj_player.xstart);
ini_write_real("Player","spwnY",obj_player.ystart);
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
var poijt;
poijt=0;
repeat(obj_inventory.slotnumber+1){
ini_write_real("Inventory","slotitem"+string(poijt),obj_inventory.itemid[poijt])
ini_write_real("Inventory","slotamount"+string(poijt),obj_inventory.counti[poijt])
poijt+=1;
}
/*ini_write_real("In1","slot0",inv[0,0])
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
ini_write_real("In2","slot8",inv[8,1])*/

// Player stats
ini_write_real("Player","Health",obj_player.HP)
ini_write_real("Player","Hunger",obj_player.Hunger)
ini_write_real("Player","Energie",obj_player.Mana)
ini_write_real("Player","Shield",obj_player.shield)
ini_write_real("Player","Melee",weapon_index)
ini_write_real("Player","Cold",obj_player.cold)

if instance_exists(obj_skybox_dtn){
ini_write_real("World","Time",obj_skybox_dtn.time)
ini_write_real("World","TimeRot",obj_skybox_dtn.rot)
ini_write_string("World","Sky","day")
}else{
ini_write_real("World","Time",obj_skybox_ntd.time)
ini_write_real("World","TimeRot",obj_skybox_ntd.rot)
ini_write_string("World","Sky","night")
}
ini_close();
if file_exists("Saves\"+file+"\world.wrld"){
if argument0=""{
//show_message("Your Map has been saved!")
}
}
}

#define scr_save_hats
if (file_exists("hats.ini")) file_delete("hats.ini");
ini_open("hats.ini");
ini_write_real("User","Hats",HATS);
ini_write_real("User","Jackets",JACKETS);
ini_write_real("User","Tails",TAILS);
ini_write_real("User","Pants",PANTS);
ini_write_real("User","PlayerHue",playercolour);
ini_close();

#define scr_save_user
if (file_exists("user.ini")) file_delete("user.ini");
ini_open("user.ini");
ini_write_string("User","Username",Username);
ini_close();
#define scr_save_opts
if (file_exists("Opts.ini")) file_delete("Opts.ini");
ini_open("Opts.ini");
ini_write_real("Opt","Shaders",shader);
ini_write_real("Opt","MinecraftSkin",MinecraftSkin);
ini_write_real("Opt","DebugMessages",DebugMSG);
ini_write_real("Opt","NameShow",NameShow);
ini_write_real("Opt","ClassicTitlescreen",ClassicUI);
ini_write_real("Opt","ConnectBlocks",connectBlocks);
ini_write_real("Opt","GameJoltChat",GJChat);
ini_write_real("Opt","Scale",scale_mult);
ini_write_real("Opt","MusicVolume",obj_music_controller.music_vol);

//                                                  Save the moneyyyy (but encrypt)

key1=((Money*5)+9)
ini_write_string("Opt","key1DONOTCHANGE",base64_encode(string(key1)));
key2=((Money*7)+10)
ini_write_string("Opt","key2DONOTCHANGE",base64_encode(string(key2)));

//ini_write_real("Opt","",JACKETS);
//ini_write_real("Opt","Tails",TAILS);
//ini_write_real("Opt","Pants",PANTS);
ini_close();

#define scr_save_credit

ini_open("Opts.ini");
key1=((Money*5)+9)
ini_write_string("Opt","key1DONOTCHANGE",base64_encode(string(key1)));
key2=((Money*7)+10)
ini_write_string("Opt","key2DONOTCHANGE",base64_encode(string(key2)));
ini_close();

if instance_exists(obj_gamejolt_api){
gj_scores_add("383047",string(Money),string(Money),"");
}

#define scr_save_stms
if (file_exists("Profile.ini")) file_delete("Profile.ini");
ini_open("Profile.ini");
ini_write_real("Profile","LastLogin",current_day);
ini_write_real("Profile","Accessoires",Accessoires);
//ini_write_real("Profile","MinecraftSkin",MinecraftSkin);
ini_close();
#define scr_game_jolt_autosave
if instance_exists(obj_gamejolt_api){
if (file_exists("gjuser.ini")) file_delete("gjuser.ini");
ini_open("gjuser.ini");
ini_write_string("User","Username",gj_user);
ini_write_string("User","Token",gj_token);
ini_close();
}
#define scr_save_map_mp
instance_activate_all();
var file;
if argument0=0{
file="GJMULTI\tmp.mp"
}else{
file=argument0
}
if file_exists(file){
file_delete(file)
}
if ! file=""{
ini_open(file)
//UTRCRAFT VERSION
ini_write_string("Game","version",UTRCraftVersion)

//Player
//ini_write_real("Player","posX"+Username,obj_player.x)
//ini_write_real("Player","posY"+Username,obj_player.y)
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
/*
ini_write_real("In1","slot0"+Username,inv[0,0])
ini_write_real("In2","slot0"+Username,inv[0,1])

ini_write_real("In1","slot1"+Username,inv[1,0])
ini_write_real("In2","slot1"+Username,inv[1,1])

ini_write_real("In1","slot2"+Username,inv[2,0])
ini_write_real("In2","slot2"+Username,inv[2,1])

ini_write_real("In1","slot3"+Username,inv[3,0])
ini_write_real("In2","slot3"+Username,inv[3,1])

ini_write_real("In1","slot4"+Username,inv[4,0])
ini_write_real("In2","slot4"+Username,inv[4,1])

ini_write_real("In1","slot5"+Username,inv[5,0])
ini_write_real("In2","slot5"+Username,inv[5,1])

ini_write_real("In1","slot6"+Username,inv[6,0])
ini_write_real("In2","slot6"+Username,inv[6,1])

ini_write_real("In1","slot7"+Username,inv[7,0])
ini_write_real("In2","slot7"+Username,inv[7,1])

ini_write_real("In1","slot8"+Username,inv[8,0])
ini_write_real("In2","slot8"+Username,inv[8,1])

// Player stats
ini_write_real("Player","Number",PlayerNumber)
ini_write_real("Player","Health"+Username,obj_player.HP)
ini_write_real("Player","Hunger"+Username,obj_player.Hunger)
ini_write_real("Player","Energie"+Username,obj_player.Mana)
ini_write_real("Player","Shield"+Username,obj_player.shield)
ini_write_real("Player","Melee"+Username,weapon_index)
ini_write_real("Player","Cold"+Username,obj_player.cold)*/

if instance_exists(obj_skybox_dtn){
ini_write_real("World","Time",obj_skybox_dtn.time)
ini_write_real("World","TimeRot",obj_skybox_dtn.rot)
ini_write_string("World","Sky","day")
}else{
ini_write_real("World","Time",obj_skybox_ntd.time)
ini_write_real("World","TimeRot",obj_skybox_ntd.rot)
ini_write_string("World","Sky","night")
}
ini_close();
if file_exists(file){
if argument0=0{
//show_message("Your Map has been saved!")
}
}
}

#define scr_save_player_mp
ini_open("GJMULTI\PlayerMP"+argument0+".tmp");

ini_write_real("Player","posX"+Username,obj_player.x)
ini_write_real("Player","posY"+Username,obj_player.y)

/*ini_write_real("In1","slot0"+Username,inv[0,0])
ini_write_real("In2","slot0"+Username,inv[0,1])

ini_write_real("In1","slot1"+Username,inv[1,0])
ini_write_real("In2","slot1"+Username,inv[1,1])

ini_write_real("In1","slot2"+Username,inv[2,0])
ini_write_real("In2","slot2"+Username,inv[2,1])

ini_write_real("In1","slot3"+Username,inv[3,0])
ini_write_real("In2","slot3"+Username,inv[3,1])

ini_write_real("In1","slot4"+Username,inv[4,0])
ini_write_real("In2","slot4"+Username,inv[4,1])

ini_write_real("In1","slot5"+Username,inv[5,0])
ini_write_real("In2","slot5"+Username,inv[5,1])

ini_write_real("In1","slot6"+Username,inv[6,0])
ini_write_real("In2","slot6"+Username,inv[6,1])

ini_write_real("In1","slot7"+Username,inv[7,0])
ini_write_real("In2","slot7"+Username,inv[7,1])

ini_write_real("In1","slot8"+Username,inv[8,0])
ini_write_real("In2","slot8"+Username,inv[8,1])*/

// Player stats
//ini_write_real("Player","Number",PlayerNumber)
//ini_write_real("Player","Username",)
/*ini_write_real("Player","Health"+Username,obj_player.HP)
ini_write_real("Player","Hunger"+Username,obj_player.Hunger)
ini_write_real("Player","Energie"+Username,obj_player.Mana)
ini_write_real("Player","Shield"+Username,obj_player.shield)
ini_write_real("Player","Melee"+Username,weapon_index)
ini_write_real("Player","Cold"+Username,obj_player.cold)*/
ini_write_real("Player","Melee"+Username,weapon_index)

ini_write_real("Player","Head"+Username,/*obj_player.*/HATS)
ini_write_real("Player","Body"+Username,/*obj_player.*/JACKETS)
ini_write_real("Player","Pant"+Username,/*obj_player.*/PANTS)
ini_write_real("Player","Tail"+Username,/*obj_player.*/TAILS)
ini_write_real("Player","Colour"+Username,/*obj_player.*/playercolour)

ini_write_real("Player","Dir"+Username,obj_player.dirofv)
ini_write_real("Player","Hand"+Username,obj_hand.image_angle);
ini_close();