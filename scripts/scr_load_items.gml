ini_open("userloot.ini"); //öffnet die datei

idd=1;

repeat(slotnumber){
                   itemid[idd]=real(ini_read_string("ItemIDs",string(idd),itemid[idd]));
                   counti[idd]=real(ini_read_string("ItemCount",string(idd),counti[idd]));
                   idd+=1;
}

ini_close(); //stoppt memory leaks
