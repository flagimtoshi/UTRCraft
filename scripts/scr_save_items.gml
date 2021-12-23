if (file_exists("userloot.ini")){ file_delete("userloot.ini"); } //löscht für eleganz

ini_open("userloot.ini"); //öffnet die datei

idd=slotnumber;

repeat(slotnumber){
                   ini_write_string("ItemIDs",string(idd),itemid[idd]);
                   ini_write_string("ItemCount",string(idd),counti[idd]);
                   idd-=1;
}

ini_close(); //stoppt memory leaks
