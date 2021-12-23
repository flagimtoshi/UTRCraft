///scr_save_animation( Filename );
//|------------------------------------------------------------|
//|                                                            |
//|                /!\ Work in Progress /!\                    |
//|                                                            |
//|------------------------------------------------------------|

//just some varibales
aniSegmentNumb=instance_number(obj_animatable_part);
frameindex=0; //the framething

//saves to the animation folder with the file extension .uani (u-trcraft ani-mation)
ini_open("animation\"+argument0+".uani");

//Header Info
ini_write_string("Meta","ProgramAuthor","Flagimtoshi")

//Animation Info
ini_write_real("Head","SegmentNumber",aniSegmentNumb) //save number of segments
ini_write_real("Head","FrameNumber",framenumber) //save number of segments
ini_write_real("Head","Framerate",get_integer("Framerate",30)) //save number of segments

//Animation Data
i=0
while(i<aniSegmentNumb){
    instt=instance_find(obj_animatable_part,i) //Get the number for the segment
    while(frameindex<(framenumber+1)){ //some 3d array bullshit
    
           ini_write_real // X Position
           ("Data","Segment"+string(i)+"PosX"+string(frameindex),((instt.framex[frameindex])-(obj_animation_pivot.x))/4);
           
           ini_write_real // Y Position
           ("Data","Segment"+string(i)+"PosY"+string(frameindex),((instt.framey[frameindex])-(obj_animation_pivot.y))/4);
           
           ini_write_real // Rotation
           ("Data","Segment"+string(i)+"Rot"+string(frameindex),instt.framea[frameindex]);
           
           frameindex+=1; //next frame
    }
    frameindex=0; // reset for next use!
    i+=1;
}

ini_close(); // Prevent memoryleak
