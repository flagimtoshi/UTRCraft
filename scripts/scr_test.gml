
if (file_exists("C:\UTRCraft\ff.ini")) file_delete("C:\UTRCraft\ff.ini");
ini_open("C:\UTRCraft\ff.ini");
ini_write_real("User","Hats",HATS);
ini_write_real("User","Jackets",JACKETS);
ini_write_real("User","Tails",TAILS);
ini_write_real("User","Pants",PANTS);
ini_write_string("User","Username",Username);
ini_close();

