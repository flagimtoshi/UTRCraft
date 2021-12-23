///scr_load_animation_from_file( filename, frame, segment, type );

//|------------------------------------------------------------|
//|                                                            |
//|                /!\ Work in Progress /!\                    |
//|                                                            |
//|------------------------------------------------------------|

//init the shit
filename=argument0;//                            The Cum
fn=argument1; //                                 Framenumber
segmentindex=argument2; //                       The selected Segment
typething=argument3;   //                        I wanna die :) (selects the type of info to load)

// Loads the Fucking animation into memory
ini_open("animation\"+filename+".uani");

switch(typething)
{
    case "X":
         
         //loads this bad boy right up   (x pos)                         
         return ini_read_real("Data","Segment"+string(segmentindex)+"PosX"+string(fn),0);
         //               Dogshit code incoming ^
           
    break;
    
    case "Y":
    
         //loads this bad boy right up   (y pos)                         
         return ini_read_real("Data","Segment"+string(segmentindex)+"PosY"+string(fn),0);
    
    break;
    
    case "Rot":
    
         //loads this bad boy right up   (rotation)
         return ini_read_real("Data","Segment"+string(segmentindex)+"Rot"+string(fn),0);
    
    break;
    
    default:
    return 0; // you're too stupid to even specify the Data-type!!!
    break;
}

// Cleares Memory to prevent a memory-leak
ini_close();
