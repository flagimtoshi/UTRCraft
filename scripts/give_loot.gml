/// give_loot( id_of_the_thing );
index=argument[0];
for(i=1; i<slotnumber+1; i++){

if (itemid[i]==0){
    
      itemid[i]=index;
      counti[i]=1;
        break;
}else{

      if (itemid[i]==index){
           
         counti[i]+=1;
              break;
      }
      
}



}
scr_save_items();
