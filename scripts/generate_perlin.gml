//randomize();
//seed = irandom_range(1000000,10000000);

var blockSize = sprite_get_width(spr_stone);

var maxHeight = floor((room_height / blockSize)/4);

var minHeight = 40; //Blocks

var block;

for(var i = 0; i < room_width / blockSize; i++){//columns
    var xx = i * blockSize;
    var h = 1+getPerlinNoise(i,maxHeight-1)+minHeight;
    for(var j = 0; j < h; j++){//rows
        var yy = room_height - blockSize - (j*blockSize);
        if(j == (h -1)){
            block = obj_bio;
        }else{
              if(j == (h -2)){
                   block = obj_dirt;
              }else{
                    if(j == (h -3)){
                         block = obj_dirt;
                    }else{
                          block = obj_store;
                    }
              }
        }
        instance_create(xx,yy,block);
    }
}
give(obj_item_workbench)
instance_activate_all();
instance_destroy();
