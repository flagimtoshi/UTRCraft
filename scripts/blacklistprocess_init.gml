global.addBlacklistProcess   = external_define("ProcessBlacklist.dll", "addBlacklistProcess",   dll_cdecl, ty_real  , 1, ty_string);
global.checkBlacklistProcess = external_define("ProcessBlacklist.dll", "checkBlacklistProcess", dll_cdecl, ty_real  , 0);
global.getBlackListedProcess = external_define("ProcessBlacklist.dll", "getBlackListedProcess", dll_cdecl, ty_string, 0);
