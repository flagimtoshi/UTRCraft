
p=10
v=0
a=0
rn=room_height/2

            
            


            // TOP //
for(i=-88;i<room_width+88;i+=8){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    instance_create(i,rn-(p*8),obj_stone) // THIS WILL CREATE THE TOP LAYER //   
    io=choose(0, 1, 2, 3)
            // MIDDLE // 
    for(m=rn-((p-1)*8);m<rn;m+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        if m<rn-((p-4)*8){
        io=choose(0, 1, 2, 3)
            instance_create(i,m,obj_stone)
        }
    }
            // BOTTOM //
    for(b=rn-((p-4)*8);b<room_height-8;b+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        instance_create(i,b,obj_stone)
    }
           
    //p+=v
    //v+=a
    //a=choose(-1,-1,-1,0,0,0,0,0,0,0,1,1,1)
    
        // TERRAIN SHAPE //
    if p>12{p=(0+1) v=0 a=-abs(a)}
    if p<7{p=(0-1) v=0 a=abs(a)}
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
        
    
    
    
    
worldGenEnd = true
//alarm[0]=10


give(obj_item_workbench)
instance_activate_all();
instance_destroy();

