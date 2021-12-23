if argument3 = 0{
argument3=obj_blank
}
if argument4 = 0{
argument4=obj_blank
}
if argument5 = 0{
argument5=obj_blank
}
if argument6 = 0{
argument6=obj_blank
}
if argument7 = 0{
argument7=obj_blank
}
if argument8= 0{
argument8=obj_blank
}
if argument9= 0{
argument9=obj_blank
}

if place_meeting(x,y-8,argument0){
if place_meeting(x,y-16,argument1){
sBlock(x,y-8,obj_des)
sBlock(x,y-16,obj_des)

sBlock(x,y-8,obj_item_des)
sBlock(x,y-16,obj_item_des)

px= obj_player.x
py=obj_player.y

audio_sound_pitch(snd_crafting,random_range(0.89, 1.1)); 
    audio_play_sound(snd_crafting,5,0);

sBlock(px,py,argument2)
sBlock(px,py,argument3)
sBlock(px,py,argument4)
sBlock(px,py,argument5)
sBlock(px,py,argument6)
sBlock(px,py,argument7)
sBlock(px,py,argument8)
sBlock(px,py,argument9)
}
}
