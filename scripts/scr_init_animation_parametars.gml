/// scr_init_animation_parametars( filename, type );

//|------------------------------------------------------------|
//|                                                            |
//|                /!\ Work in Progress /!\                    |
//|                                                            |
//|------------------------------------------------------------|

//init the shit
filename=argument0;
type=argument1;//                            The Cum

// Loads the Fucking animation into memory
ini_open("animation\"+filename+".uani");

switch (type){
       case "FPS":
       return ini_read_real("Head","Framerate",30);
       break;
       case "FrameCount":
       return ini_read_real("Head","FrameNumber",0);
       break;
       case "SegmentCount":
       return ini_read_real("Head","SegmentNumber",1);
       break;
}

// fuck off bugs
ini_close();
