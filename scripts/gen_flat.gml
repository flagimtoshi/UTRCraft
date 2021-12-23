if Loaded=1{
exit;
}
p=argument0
v=argument1
a=argument2
rn=room_height/2

          
            randomize();
    
    blocktop=obj_bio;
   blockmid=obj_dirt;
   blockbottom=obj_store;
   //biome=choose(1, 0);
    //biomecount=0;
    //biomesize=random_range(10,30) ;


            // TOP //
for(i=-88;i<room_width+88;i+=8){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    //randomize();
    
    
    //while(!biomesize = biomecount){
    //biomecount+=1
    //}
    //biome=choose(1, 0);
    
    //switch(biome){
    /*case 1:
    blocktop=obj_sand
    blockmid=obj_sand
    blockbottom=obj_stone
    break;
    
    case 0:
    blocktop=obj_bio
    blockmid=obj_dirt
    blockbottom=obj_store
    break;
    }*/
    heightoffset=round(((i-room_width)*(-i)/(256)-3690)/8)*8 //cahnge pls
    heightoffset=-32//clamp(heightoffset, -37, 128);
    //heightoffset=clamp(heightoffset,-20,-10)
    //p=9*sin( i )
    zey=(rn-(p*8))+heightoffset//the thing
    if zey<200{    // higher = lower terrain
    blocktop=obj_bio;
    blockmid=obj_dirt;
    }else{
    blocktop=obj_sand;
    blockmid=obj_sand;
    }
    instance_create(i,zey,blocktop) // THIS WILL CREATE THE TOP LAYER //  
    for(waterh=200;waterh<zey;waterh+=8){
    instance_create(i,waterh,obj_water) 
    }
    io=choose(0, 1, 2, 3)
            // MIDDLE // 
    for(m=rn-((p-1)*8);m<rn;m+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        if m<rn-((p-4)*8){
        io=choose(0, 1, 2, 3)
            instance_create(i,m+heightoffset,blockmid)
        }
    }
            // BOTTOM //
    for(b=rn-((p-4)*8)+heightoffset;b<room_height-8-(heightoffset/heightoffset);b+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        instance_create(i,b,blockbottom)
    }
           
    p+=v
    v+=a
    a=0
    
        // TERRAIN SHAPE //
    if p>12{p=(argument0+1) v=0 a=-abs(a)}
    if p<7{p=(argument0-1) v=0 a=abs(a)}
} 



// BEDROCK //
    for(io=-88;io<room_width+88;io+=8){ // THIS WILL START GENERATE BEDROCK //
        instance_create(io,room_height-8,obj_hard_block)
        //instance_create(io,rn,obj_cave_med)
    }
    
    

    
    // CAVES //

    
    //for(io=-88;io<room_width+88;io+=8){ // THIS WILL START GENERATE BEDROCK //
    //randomize()
    //cavei=random_range(0,10)
    
    //if cavei = 7{
    //cave=obj_des
    //}else{
    //cave=obj_blank
    //}
    //    instance_create(io,rn-8,cave)
    //}
        
    
    
    
    
//worldGenEnd = true
//alarm[0]=10

//p=(argument0-1) // POSITION // START GENERATING FROM THIS HEIGHT //
//v=argument1 // VELOCITY // THIS WILL INCREASE THE HEIGHT BY 2 //
//a=argument2 // ACCELERATION // THIS WILL DECREASE VELOCITY BY 1 //

            // TOP //
//for(i=0;i<room_width;i+=8){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    //instance_create(i,room_height-(p*8),obj_water) // THIS WILL CREATE THE TOP LAYER //   
            // MIDDLE // 
    //for(m=room_height-((p-1)*8);m<room_height;m+=8){ // THIS WILL START GENERATE THE MIDDLE LAYER //
        //if m<room_height-((p-2)*8){
            //instance_create(i,m,obj_water)
       // }
    //}
            // BOTTOM //
    //for(b=room_height-((p-2)*8);b<room_height;b+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        //instance_create(i,b,obj_water)
    //}
    //p+=v
    //v+=a
    //a=choose(-2,-1,0,1,2)
    
        // TERRAIN SHAPE //
    //if p>argument0{p=argument0 v=0 a=-abs(a)}
    //if p<argument0{p=argument0 v=0 a=abs(a)}
//}
worldGenEnd = true
alarm[0]=10

give(obj_item_workbench)
instance_activate_all();
instance_destroy();

