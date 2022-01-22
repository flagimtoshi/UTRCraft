///create_playerlist( path, playernumber );
file_pl=ini_open(argument[0]);
ini_write_real("Global","Playernumber",argument[1]);
ini_close();
