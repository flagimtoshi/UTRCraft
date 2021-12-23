iiii=findIndex(control.sprites,control.sprites[obj_inventory.itemid[obj_inventory.selnumb]]);

ini_open(working_directory+"lang\lang.ini");

itemname=ini_read_string("Item",string(iiii),"Error: Lang file missing");

ini_close();

return itemname;
