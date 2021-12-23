///get_string_ini( section, key );
ini_open(working_directory+"lang\lang.ini");

rtex=ini_read_string(argument0,argument1,"Error");

ini_close();


return rtex;
