///ExecuteCommand(command)
/* 
    ExecuteCommand(command);
    command: A command that you also can run in the command prompt
*/

if (os_type == os_windows) 
{
    external_call(external_define("ExecuteCommand.dll",
    "ExecuteCommand",dll_cdecl,ty_string,1,ty_string),
    argument0);
}
