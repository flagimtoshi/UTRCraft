///craft( loweritem, upperitem, results...);
/*i=argument_count-2
o=0;
while(!i=0)
{
    if argument[i]=0{
    argument[i]=obj_blank
    i-=1
    }else{
    arg[o]=argument[i];
    o+=1;
    i-=1
    }
    
}*/

if place_meeting(x,y-8,argument[0]){
if place_meeting(x,y-16,argument[1]){

sBlock(x,y-8,obj_des)
sBlock(x,y-16,obj_des)

sBlock(x,y-8,obj_item_des)
sBlock(x,y-16,obj_item_des)

audio_sound_pitch(snd_crafting,random_range(0.89, 1.1)); 
    audio_play_sound(snd_crafting,5,0);

    //var ii = 2;
/*for(ii=0;  !ii=argument_count+2; ii+=1){

         
         //give_item(argument[ii])
         uiuu=argument[3]
         give(uiuu);
         
        
         
         
}*/

for(var i = 2; i < argument_count; i++) {
    //show_message(string(object_get_name(argument[i]))); // Converting to STRING to prevent errors
    item=sBlock(x+4,y+4,obj_item)
    item.index=argument[i]
}
//var ii=argument_count
//repeat(argument_count-2)
//{
//    give(argument[ii])
//    ii-=1
//}

}
}
