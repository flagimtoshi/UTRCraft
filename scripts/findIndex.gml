var i, tempArray;
tempArray = argument0;
for(i=0; i<array_length_1d(tempArray); i++){
    if(tempArray[i]==argument1)
        return i;
}
return 0;
