var xx = argument0;
var range = argument1;

var noise = 0;

var chunkSize = 16*2;

range = range div 2;

while(chunkSize > 0){
    var chunkIndex = xx div chunkSize;
    
    var prog = (xx % chunkSize) / chunkSize;
    
    var left_random = randomSeed(chunkIndex, range);
    var right_random = randomSeed(chunkIndex + 1, range);
    
    noise += (1-prog)*left_random + prog*right_random;
    
    chunkSize = chunkSize div 2;
    range = range div 2;
    range = max(1,range);
}

return round(noise);


