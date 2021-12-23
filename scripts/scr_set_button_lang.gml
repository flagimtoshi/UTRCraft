ini_open(working_directory+"lang\lang.ini");

argument0.Text=ini_read_string("Buttons",argument1,"Error: Lang file missing");

ini_close();
