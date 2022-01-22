#define scr_loads
//just the header

#define scr_load_hats
if file_exists("hats.ini"){
ini_open("hats.ini");
HATS=ini_read_real("User","Hats",0);
JACKETS=ini_read_real("User","Jackets",0);
TAILS=ini_read_real("User","Tails",0);
PANTS=ini_read_real("User","Pants",0);
playercolour=ini_read_real("User","PlayerHue",c_blue);
ini_close();
}

#define scr_load_map

var file;
if argument0=""{
file="RND"
}else{
file=argument0
}
if ! file=""{ 
ini_open("Saves\"+file+"\world.wrld")
//Player
obj_player.x=ini_read_real("Player","posX",0)
obj_player.y=ini_read_real("Player","posY",0)

obj_player.xstart=ini_read_real("Player","spwnX",976)
obj_player.ystart=ini_read_real("Player","spwnY",136)
//Sky
//obj_fog_map.x=ini_read_real("World","posX",0)
//obj_fog_map.y=ini_read_real("World","posY",0)
//wall objs
wallins=ini_read_real("Extras","Walls",0)
//walls
var i;
var xx, yy;
i=wallins
while (i>0){
xx=ini_read_real("Map","wallx"+string(i),0)
yy=ini_read_real("Map","wally"+string(i),0)
insts=ini_read_real("Map","wallprp"+string(i),0)
kjkj=BlockSave[insts];
ioo=instance_create(xx,yy,kjkj)

scr_special_data_load(ioo, i);

//if ioo.object_index=obj_custom_block{

//}
/*if  (obj_item=object_get_parent(ioo.object_index)){
ioo.item_index=ini_read_real("Map","wallindA"+string(i),0)
ioo.index=ini_read_real("Map","wallindB"+string(i),0)
}*/
i-=1
}

var poijt;
poijt=0;
repeat(obj_inventory.slotnumber+1){
obj_inventory.itemid[poijt] = ini_read_real("Inventory","slotitem"+string(poijt),0);
obj_inventory.counti[poijt] = ini_read_real("Inventory","slotamount"+string(poijt),0);
poijt+=1;
}

/*inv[0,0] = ini_read_real("In1","slot0",0);
inv[0,1] = ini_read_real("In2","slot0",0);
//globalvar inv00;inv00 = ini_read_real("In1","slot0",0);
//globalvar inv01;inv01 = ini_read_real("In2","slot0",0);
//inv[0,0] = inv00;
//inv[0,1] = inv01;

//globalvar inv10;inv10 = ini_read_real("In1","slot1",0);
//globalvar inv11;inv11 = ini_read_real("In2","slot1",0);
inv[1,0] = ini_read_real("In1","slot1",0);
inv[1,1] = ini_read_real("In2","slot1",0);

//globalvar inv20;inv20 = ini_read_real("In1","slot2",0);
//globalvar inv21;inv21 = ini_read_real("In2","slot2",0);
inv[2,0] = ini_read_real("In1","slot2",0);
inv[2,1] = ini_read_real("In2","slot2",0);

//globalvar inv30;inv30 = ini_read_real("In1","slot3",0);
//globalvar inv31;inv31 = ini_read_real("In2","slot3",0);
inv[3,0] = ini_read_real("In1","slot3",0);
inv[3,1] = ini_read_real("In2","slot3",0);

//globalvar inv40;inv40 = ini_read_real("In1","slot4",0);
//globalvar inv41;inv41 = ini_read_real("In2","slot4",0);
inv[4,0] = ini_read_real("In1","slot4",0);
inv[4,1] = ini_read_real("In2","slot4",0);

//globalvar inv50;inv50 = ini_read_real("In1","slot5",0);
//globalvar inv51;inv51 = ini_read_real("In2","slot5",0);
inv[5,0] = ini_read_real("In1","slot5",0);
inv[5,1] = ini_read_real("In2","slot5",0);

//globalvar inv60;inv60 = ini_read_real("In1","slot6",0);
//globalvar inv61;inv61 = ini_read_real("In2","slot6",0);
inv[6,0] = ini_read_real("In1","slot6",0);
inv[6,1] = ini_read_real("In2","slot6",0);

//globalvar inv70;inv70 = ini_read_real("In1","slot7",0);
//globalvar inv71;inv71 = ini_read_real("In2","slot7",0);
inv[7,0] = ini_read_real("In1","slot7",0);
inv[7,1] = ini_read_real("In2","slot7",0);

//globalvar inv80;inv80 = ini_read_real("In1","slot8",0);
//globalvar inv81;inv81 = ini_read_real("In2","slot8",0);
inv[8,0] = ini_read_real("In1","slot8",0);
inv[8,1] = ini_read_real("In2","slot8",0);*/



//player stats
obj_player.HP=ini_read_real("Player","Health",20)
obj_player.Hunger=ini_read_real("Player","Hunger",20)
obj_player.Mana=ini_read_real("Player","Energie",20)
obj_player.shield=ini_read_real("Player","Shield",0)
weapon_index=ini_read_real("Player","Melee",obj_sword_lvl0)
obj_player.cold=ini_read_real("Player","Cold",0)




var Skyy="day";
Skyy=ini_read_string("World","Sky","day")
if Skyy="day"{
instance_create(0,0,obj_skybox_dtn)
obj_skybox_dtn.time=ini_read_real("World","Time",0)
obj_skybox_dtn.rot=ini_read_real("World","TimeRot",360)
}else{
instance_create(0,0,obj_skybox_ntd)
obj_skybox_ntd.time=ini_read_real("World","Time",0)
obj_skybox_ntd.rot=ini_read_real("World","TimeRot",360)
}
load=ini_read_real("Check","check",0)
ini_close();

//show_message("Your Map has been loaded!")
}

#define scr_load_user
if file_exists("user.ini"){
ini_open("user.ini");
Username=ini_read_string("User","Username","");
ini_close();
}
#define scr_load_opts
if file_exists("Opts.ini"){
ini_open("Opts.ini");
shader=ini_read_real("Opt","Shaders",1);
MinecraftSkin=ini_read_real("Opt","MinecraftSkin",0);
DebugMSG=ini_read_real("Opt","DebugMessages",0);
NameShow=ini_read_real("Opt","NameShow",0);
ClassicUI=ini_read_real("Opt","ClassicTitlescreen",0);
connectBlocks=ini_read_real("Opt","ConnectBlocks",1);
GJChat=ini_read_real("Opt","GameJoltChat",1);
scale_mult=ini_read_real("Opt","Scale",0.75);
var key1, key2;
key1=base64_decode(ini_read_string("Opt","key1DONOTCHANGE","OTU="));
key2=base64_decode(ini_read_string("Opt","key2DONOTCHANGE","NzA="));
enkey1=((real(key1)-9)/5)
enkey2=((real(key2)-10)/7)
if (enkey1==enkey2){
Money=(enkey1+enkey2)/2;
}else{
scr_message("Error:KeysChanged! Reseting Profile!",75);
scr_save_credit();
}
ini_close();
}

#define scr_load_stms
if file_exists("Profile.ini"){
ini_open("Profile.ini");
Accessoires=ini_read_real("Profile","Accessoires",0);
iiii=ini_read_real("Profile","LastLogin",1);
if! (iiii==current_day){
scr_save_stms();
Money+=100
scr_save_credit();
}
ini_close();
}
#define scr_game_jolt_autoload
if file_exists("gjuser.ini"){
ini_open("gjuser.ini");
instance_create(0,0,obj_gamejolt_api);
gj_usert=ini_read_string("User","Username","");
gj_tokent=ini_read_string("User","Token","");
request=gj_user_login(gj_usert,gj_tokent);
//extracted parts
        Text=gj_usert+get_string_ini("Buttons","Button_GameJoltLoggedin");
        Username=gj_usert
//
ini_close();
}else{
show_debug_message("Failed to Autologin to GameJolt")
}

#define scr_load_mp_map
with (obj_solid) {
instance_destroy(self,false);
}
with (obj_non_solid) {
instance_destroy(self,false);
}
with (obj_baseblock) {
instance_destroy(self,false);
}
with (obj_light) {
instance_destroy(self,false);
}
with (obj_other_player) {
if ! self.Username=gj_user_username(){
instance_destroy(self,false);
}
}
var file;
if argument0=0{
file="GJMULTI\tmp.mp"
}else{
file=argument0
}
if ! file=""{ 
ini_open(file)
//Player
//obj_player.x=ini_read_real("Player","posX"+Username,0)
//obj_player.y=ini_read_real("Player","posY"+Username,0)
//Sky
//obj_fog_map.x=ini_read_real("World","posX",0)
//obj_fog_map.y=ini_read_real("World","posY",0)
//wall objs
wallins=ini_read_real("Extras","Walls",0)
//walls
var i;
var xx, yy;
i=wallins
while (i>0){
xx=ini_read_real("Map","wallx"+string(i),0)
yy=ini_read_real("Map","wally"+string(i),0)
insts=ini_read_real("Map","wallprp"+string(i),0)
kjkj=BlockSave[insts];
ioo=instance_create(xx,yy,kjkj)

scr_special_data_load(ioo, i);

//if ioo.object_index=obj_custom_block{

//}
/*if  (obj_item=object_get_parent(ioo.object_index)){
ioo.item_index=ini_read_real("Map","wallindA"+string(i),0)
ioo.index=ini_read_real("Map","wallindB"+string(i),0)
}*/
i-=1
}
/*
inv[0,0] = ini_read_real("In1","slot0"+Username,0);
inv[0,1] = ini_read_real("In2","slot0"+Username,0);
//globalvar inv00;inv00 = ini_read_real("In1","slot0",0);
//globalvar inv01;inv01 = ini_read_real("In2","slot0",0);
//inv[0,0] = inv00;
//inv[0,1] = inv01;

//globalvar inv10;inv10 = ini_read_real("In1","slot1",0);
//globalvar inv11;inv11 = ini_read_real("In2","slot1",0);
inv[1,0] = ini_read_real("In1","slot1"+Username,0);
inv[1,1] = ini_read_real("In2","slot1"+Username,0);

//globalvar inv20;inv20 = ini_read_real("In1","slot2",0);
//globalvar inv21;inv21 = ini_read_real("In2","slot2",0);
inv[2,0] = ini_read_real("In1","slot2"+Username,0);
inv[2,1] = ini_read_real("In2","slot2"+Username,0);

//globalvar inv30;inv30 = ini_read_real("In1","slot3",0);
//globalvar inv31;inv31 = ini_read_real("In2","slot3",0);
inv[3,0] = ini_read_real("In1","slot3"+Username,0);
inv[3,1] = ini_read_real("In2","slot3"+Username,0);

//globalvar inv40;inv40 = ini_read_real("In1","slot4",0);
//globalvar inv41;inv41 = ini_read_real("In2","slot4",0);
inv[4,0] = ini_read_real("In1","slot4"+Username,0);
inv[4,1] = ini_read_real("In2","slot4"+Username,0);

//globalvar inv50;inv50 = ini_read_real("In1","slot5",0);
//globalvar inv51;inv51 = ini_read_real("In2","slot5",0);
inv[5,0] = ini_read_real("In1","slot5"+Username,0);
inv[5,1] = ini_read_real("In2","slot5"+Username,0);

//globalvar inv60;inv60 = ini_read_real("In1","slot6",0);
//globalvar inv61;inv61 = ini_read_real("In2","slot6",0);
inv[6,0] = ini_read_real("In1","slot6"+Username,0);
inv[6,1] = ini_read_real("In2","slot6"+Username,0);

//globalvar inv70;inv70 = ini_read_real("In1","slot7",0);
//globalvar inv71;inv71 = ini_read_real("In2","slot7",0);
inv[7,0] = ini_read_real("In1","slot7"+Username,0);
inv[7,1] = ini_read_real("In2","slot7"+Username,0);

//globalvar inv80;inv80 = ini_read_real("In1","slot8",0);
//globalvar inv81;inv81 = ini_read_real("In2","slot8",0);
inv[8,0] = ini_read_real("In1","slot8"+Username,0);
inv[8,1] = ini_read_real("In2","slot8"+Username,0);*/



//player stats
//ini_read_real("Player","number",1);
obj_player.HP=ini_read_real("Player","Health"+Username,20)
obj_player.Hunger=ini_read_real("Player","Hunger"+Username,20)
obj_player.Mana=ini_read_real("Player","Energie"+Username,20)
obj_player.shield=ini_read_real("Player","Shield"+Username,0)
weapon_index=ini_read_real("Player","Melee"+Username,obj_sword_lvl0)
obj_player.cold=ini_read_real("Player","Cold"+Username,0)

version=ini_read_string("Game","version","Failed to load Game Version")


var Skyy="day";
Skyy=ini_read_string("World","Sky","day")
if Skyy="day"{
instance_create(0,0,obj_skybox_dtn)
obj_skybox_dtn.time=ini_read_real("World","Time",0)
obj_skybox_dtn.rot=ini_read_real("World","TimeRot",360)
}else{
instance_create(0,0,obj_skybox_ntd)
obj_skybox_ntd.time=ini_read_real("World","Time",0)
obj_skybox_ntd.rot=ini_read_real("World","TimeRot",360)
}
load=ini_read_real("Check","check",0)
ini_close();

//show_message("Your Map has been loaded!")
}

#define scr_load_player_mp
ini_open("GJMULTI\PlayerMP"+argument0+".tmp");

px=ini_read_real("Player","posX"+self.Username,0)
py=ini_read_real("Player","posY"+self.Username,0)

/*inv[0,0] = ini_read_real("In1","slot0"+Username,0);
inv[0,1] = ini_read_real("In2","slot0"+Username,0);
inv[1,0] = ini_read_real("In1","slot1"+Username,0);
inv[1,1] = ini_read_real("In2","slot1"+Username,0);
inv[2,0] = ini_read_real("In1","slot2"+Username,0);
inv[2,1] = ini_read_real("In2","slot2"+Username,0);
inv[3,0] = ini_read_real("In1","slot3"+Username,0);
inv[3,1] = ini_read_real("In2","slot3"+Username,0);
inv[4,0] = ini_read_real("In1","slot4"+Username,0);
inv[4,1] = ini_read_real("In2","slot4"+Username,0);
inv[5,0] = ini_read_real("In1","slot5"+Username,0);
inv[5,1] = ini_read_real("In2","slot5"+Username,0);
inv[6,0] = ini_read_real("In1","slot6"+Username,0);
inv[6,1] = ini_read_real("In2","slot6"+Username,0);
inv[7,0] = ini_read_real("In1","slot7"+Username,0);
inv[7,1] = ini_read_real("In2","slot7"+Username,0);
inv[8,0] = ini_read_real("In1","slot8"+Username,0);
inv[8,1] = ini_read_real("In2","slot8"+Username,0);*/

/*HP=ini_read_real("Player","Health"+Username,20)
Hunger=ini_read_real("Player","Hunger"+Username,20)
Mana=ini_read_real("Player","Energie"+Username,20)
shield=ini_read_real("Player","Shield"+Username,0)
weapon_index=ini_read_real("Player","Melee"+Username,obj_sword_lvl0)
cold=ini_read_real("Player","Cold"+Username,0)*/

weapon_indexx=ini_read_real("Player","Melee"+self.Username,obj_sword_lvl0)

dirofv=ini_read_real("Player","Dir"+self.Username,1);
pant=ini_read_real("Player","Pant"+self.Username,0)
tail=ini_read_real("Player","Tail"+self.Username,0)
head=ini_read_real("Player","Head"+self.Username,0)
body=ini_read_real("Player","Body"+self.Username,0)
handanglee=ini_read_real("Player","Hand"+self.Username,0)
pcolour=ini_read_real("Player","Colour"+self.Username,c_blue);

ini_close();