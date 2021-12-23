var seed = argument0;
var range = argument1;

seed += obj_gen.seed;

random_set_seed(seed);
rand = irandom_range(0,range);

return rand;
