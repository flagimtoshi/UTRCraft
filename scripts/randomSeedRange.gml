var seed = argument0;
var range = argument1;
var range2 = argument2;

seed += obj_gen.seed;

random_set_seed(seed);
rand = irandom_range(range,range2);

return rand;
