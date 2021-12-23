
p=argument0
v=argument1
a=argument2
rn=room_height/2

            
            


            // TOP //
for(i=0;i<room_width;i+=8){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    instance_create(i,rn-(p*8),obj_dry_gound) // THIS WILL CREATE THE TOP LAYER //   
    io=choose(0, 1, 2, 3)  
            // MIDDLE // 
    for(m=rn-((p-1)*8);m<rn;m+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        if m<rn-((p-4)*8){
        io=choose(0, 1, 2, 3)
            instance_create(i,m,obj_dry_gound)
        }
    }
            // BOTTOM //
    for(b=rn-((p-4)*8);b<room_height;b+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        instance_create(i,b,obj_dry_gound)
    }
    p+=v
    v+=a
    a=choose(-1,-1,-1,0,0,0,0,0,0,0,1,1,1)
    
        // TERRAIN SHAPE //
    if p>12{p=(argument0+1) v=0 a=-abs(a)}
    if p<7{p=(argument0-1) v=0 a=abs(a)}
}
worldGenEnd = true
alarm[0]=10

p=(argument0-1) // POSITION // START GENERATES FROM THIS HEIGHT //
v=argument1 // VELOCITY // THIS WILL INCREASE THE HEIGHT BY 2 //
a=argument2 // ACCELERATION // THIS WILL DECREASE VELOCITY BY 1 //

            // TOP //
for(i=0;i<room_width;i+=8){ // THIS WILL KEEP GENERATE THE WORLD UNTIL IT REACHES ITS END //
    instance_create(i,room_height-(p*8),obj_water) // THIS WILL CREATE THE TOP LAYER //   
            // MIDDLE // 
    for(m=room_height-((p-1)*8);m<room_height;m+=8){ // THIS WILL START GENERATE THE MIDDLE LAYER //
        if m<room_height-((p-2)*8){
            instance_create(i,m,obj_water)
        }
    }
            // BOTTOM //
    for(b=room_height-((p-2)*8);b<room_height;b+=8){ // THIS WILL START GENERATE THE BOTTOM LAYER //
        instance_create(i,b,obj_water)
    }
    p+=v
    v+=a
    a=choose(-2,-1,0,1,2)
    
        // TERRAIN SHAPE //
    if p>argument0{p=argument0 v=0 a=-abs(a)}
    if p<argument0{p=argument0 v=0 a=abs(a)}
}
worldGenEnd = true
alarm[0]=10

give(obj_item_workbench)
instance_destroy();

