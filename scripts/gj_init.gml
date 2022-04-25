#define gj_init
//gj_init(string game id,string private key)
//Init GameJolt Achievement API. Provide the Game ID and the private key.
globalvar gj_user,gj_token,gj_gameid,gj_privatekey,gj_handletypemap,gj_infomap,gj_tempuser,gj_temptoken;
gj_user=""
gj_token=""
gj_gameid=argument0;
gj_privatekey=argument1;
gj_handletypemap=ds_map_create()
gj_infomap=ds_map_create()
gj_tempuser=""
gj_temptoken=""



#define gj_result_id
//gj_result_id()
//returns: event handle id
//The async event always returns information for one handle id. This returns the id.
return ds_map_find_value(async_load,"id");



#define gj_result_status
//gj_checkstatus()
//Returns: true if the function is completed, false if there is an GameJolt error, <0 if there is a GameMaker error (for example, if GM couldn't find the site).
//If returns 0, more info will be available when you call gj_error()
//Returns the status and makes the info available, so ALWAYS call this before you request any info.
var httpstatus=ds_map_find_value(async_load,"status");
if(httpstatus<0)
{
    return httpstatus;
}
else
{
    var datatype=ds_map_find_value(gj_handletypemap,ds_map_find_value(async_load,"id"));
    if(datatype==4) //dump format
    {
        var gj_returnstring=ds_map_find_value(async_load,"result");
        ds_map_delete(gj_handletypemap,ds_map_find_value(async_load,"id"))
        switch(string_copy(gj_returnstring,1,7))
        {
            case "SUCCESS":
                gj_returnstring=string_delete(gj_returnstring,1,9)
                ds_map_clear(gj_infomap)
                ds_map_add(gj_infomap,"0data",gj_returnstring)
                return true;
            break;
            case "FAILURE":
                gj_returnstring=string_delete(gj_returnstring,1,9)
                ds_map_clear(gj_infomap)
                ds_map_add(gj_infomap,"error",gj_returnstring)
                return false;
            break;
        }
    }
    else
    {
        //Make a ds_map with the information
        //First clear our info map
        ds_map_clear(gj_infomap)
        var gj_key="",gj_value="",gj_returnstring=ds_map_find_value(async_load,"result");
        //Now removed because of HTML5
        //gj_returnstring=string_replace_all(gj_returnstring,"
//","") //make it easier to read the map by removing all newlines.
        show_debug_message(gj_returnstring) //Debugging
        //gj_returnstring=string_replace_all(gj_returnstring,string('\"'),string('""')) //Sorry, couldn't find a better way to do this.            ok . _.
        if is_undefined(gj_returnstring){
        gj_returnstring="Error"
        }
        gj_returnstring=string_replace_all(gj_returnstring,'\"','""')
        //First always check the first line, as this always contains the status
        gj_key=string_copy(gj_returnstring,1,string_pos(':"',gj_returnstring)-1)
        gj_returnstring=string_delete(gj_returnstring,1,string_pos(':"',gj_returnstring)+1)
        gj_value=string_copy(gj_returnstring,1,string_pos('"',gj_returnstring)-1)
        gj_returnstring=string_delete(gj_returnstring,1,string_pos('"',gj_returnstring)+2)
        if(gj_value="true")
        {
            //Succes! Now we can read the rest of the map, if the call needs it, else just return true.
            switch(datatype)
            {
                case 0:
                    gj_user=gj_tempuser
                    gj_token=gj_temptoken
                    gj_tempuser=""
                    gj_temptoken=""
                break;
                case 1:
                    var gj_currnum=0;
                    while(gj_returnstring!="")
                    {
                            gj_key=string_copy(gj_returnstring,1,string_pos(':"',gj_returnstring)-1)
                            gj_returnstring=string_delete(gj_returnstring,1,string_pos(':"',gj_returnstring)+1)
                            gj_value=string_copy(gj_returnstring,1,string_pos('"',gj_returnstring)-1)
                            gj_returnstring=string_delete(gj_returnstring,1,string_pos('"',gj_returnstring)+2)
                            if(ds_map_exists(gj_infomap,string(gj_currnum)+gj_key))
                            {
                                gj_currnum+=1
                            }
                            ds_map_add(gj_infomap,string(gj_currnum)+gj_key,gj_value)
                    }
                    ds_map_add(gj_infomap,"fieldnum",gj_currnum)
                break;
                //Case 3 is the same as 1, but then for highscores with guests. We add the is_guest var here.
                case 3:
                    var gj_currnum=0;
                    while(gj_returnstring!="")
                    {
                            gj_key=string_copy(gj_returnstring,1,string_pos(':"',gj_returnstring)-1)
                            gj_returnstring=string_delete(gj_returnstring,1,string_pos(':"',gj_returnstring)+1)
                            gj_value=string_copy(gj_returnstring,1,string_pos('"',gj_returnstring)-1)
                            gj_returnstring=string_delete(gj_returnstring,1,string_pos('"',gj_returnstring)+2)
                            //show_message(gj_returnstring) //Debugging
                            if(ds_map_exists(gj_infomap,string(gj_currnum)+gj_key))
                            {
                                gj_currnum+=1
                            }
                            if(gj_key=="user")
                            {
                                if(gj_value=="")
                                ds_map_add(gj_infomap,string(gj_currnum)+"is_guest",1)
                                else
                                {
                                    ds_map_add(gj_infomap,string(gj_currnum)+"is_guest",0)
                                    ds_map_add(gj_infomap,string(gj_currnum)+"display_name",gj_value)
                                }
                            }
                            if(gj_key="guest")and(gj_value!="")
                            {
                                ds_map_add(gj_infomap,string(gj_currnum)+"display_name",gj_value)
                            }
                            ds_map_add(gj_infomap,string(gj_currnum)+gj_key,gj_value)
                    }
                    ds_map_add(gj_infomap,"fieldnum",gj_currnum)
                break;
            }
            //Then remove the handle id from the map, as it is no longer needed.
            ds_map_delete(gj_handletypemap,ds_map_find_value(async_load,"id"))
            return true;
        }
        else
        {
            //The error is on the next line now
            gj_key=string_copy(gj_returnstring,1,string_pos(':"',gj_returnstring)-1)
            gj_returnstring=string_delete(gj_returnstring,1,string_pos(':"',gj_returnstring)+1)
            gj_value=string_copy(gj_returnstring,1,string_pos('"',gj_returnstring)-1)
            gj_returnstring=string_delete(gj_returnstring,1,string_pos('"',gj_returnstring)+2)
            //Add it to our ds_map so we can find it later if gj_error is called
            ds_map_add(gj_infomap,"error",gj_value)
            return false;
        }
    }
}




#define gj_result_error
//gj_result_error()
//returns: error (string)
//You can use this only if gj_checkstatus returned 0, to get the error string.
//Mainly for debug use.
return ds_map_find_value(gj_infomap,"error");



#define gj_result_data_count
//gj_result_data_count()
//Returns: number of recieved users, achievements, etc.
//After calling gj_checkstatus(), you can use this to find the number of users, achievements, etc. 
return ds_map_find_value(gj_infomap,"fieldnum")+1;



#define gj_result_data_field
//gj_result_data_field()
//Returns: string of the info in the field
//After calling gj_checkstatus(), you can use this to find a field in the result. For all possible fields, see the documentation.
return ds_map_find_value(gj_infomap,"0"+argument0);



#define gj_result_data_field_num
//gj_result_data_field_num(string fieldname, real fieldnumber)
//Returns: string of the info in the field
//After calling gj_checkstatus(), you can use this to find a field other than the first in the result. For all possible fields, see the documentation.
return ds_map_find_value(gj_infomap,string(argument1)+argument0);



#define gj_result_clear
//gj_result_clear()
//Returns: nothing
//Always call this at the end of an async event to prevent memory leaks!
ds_map_clear(gj_infomap)



#define gj_user_login
//gj_user_login(string username,string user_token)
//returns: handle
//Auth the user. Check for the result in the async event.
var url="http://gamejolt.com/api/game/v1/users/auth/?game_id="+gj_gameid+"&username="+argument0+"&user_token="+argument1;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
gj_tempuser=argument0
gj_temptoken=argument1
ds_map_add(gj_handletypemap,gj_currhandle,0)
return gj_currhandle;



#define gj_user_logout
//gj_user_logout()
//returns: nothing
//if logged in: log out
gj_user=""
gj_token=""



#define gj_user_isloggedin
//gj_user_isloggedin()
//returns: boolean
//Checks if the user is logged in
return gj_user!="";



#define gj_user_username
//gj_user_username()
//returns: string
//Returns username
return gj_user;



#define gj_user_info_fromusername
//gj_user_info_fromusername(string username)
//returns: handle
//Gets user info. 
var url="http://gamejolt.com/api/game/v1/users/?game_id="+gj_gameid+"&username="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_user_info_fromuserid
//gj_user_info_fromuserid(string userid(s))
//argument0 can be a Comma Separated List
//returns: handle
//Gets user info. 
var url="http://gamejolt.com/api/game/v1/users/?game_id="+gj_gameid+"&user_id="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_session_open
//gj_session_open()
//returns: handle
//Open session
var url="http://gamejolt.com/api/game/v1/sessions/open/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_session_ping
//gj_session_ping(bool status (true for active, false for idle))
//returns: handle
//Ping session
if(argument0)
var url="http://gamejolt.com/api/game/v1/sessions/ping/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&status=active";
else
var url="http://gamejolt.com/api/game/v1/sessions/ping/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&status=idle";
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_session_close
//gj_session_close()
//returns: handle
//Close session
var url="http://gamejolt.com/api/game/v1/sessions/close/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_trophy_get
//gj_trophy_get(optional bool achieved)
//returns: handle
//Get all trophies. If argument0==true, only achieved trophies, if argument0==false, only not-achieved trophies, if argument0 not provided, all trophies
if(argument_count==1)
{
    if!(argument[0])
    {
        var url="http://gamejolt.com/api/game/v1/trophies/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&achieved=false";
    }
    else
    {
        var url="http://gamejolt.com/api/game/v1/trophies/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&achieved=true"; 
    }
}
else
var url="http://gamejolt.com/api/game/v1/trophies/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_trophy_get_id
//gj_trophy_get_id(string trophy_id)
//returns: handle
//Get certain trophies.
var url="http://gamejolt.com/api/game/v1/trophies/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&trophy_id="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_trophy_add
///gj_trophy_add(string trophy_id)
//returns: handle
//Add a trophy
var url="http://gamejolt.com/api/game/v1/trophies/add-achieved/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&trophy_id="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_scores_add
//gj_scores_add(string table_id,string scorestring, real scoresort, string extra_data)
//returns: handle
//Add a score
var url="http://gamejolt.com/api/game/v1/scores/add/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&table_id="+argument0+"&score="+string(argument1)+"&sort="+string(argument2)+"&extra_data="+argument3;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_scores_add_guest
//gj_scores_add(string table_id,string scorestring, real scoresort, string extra_data, string GuestName)
//returns: handle
//Add a score
var url="http://gamejolt.com/api/game/v1/scores/add/?game_id="+gj_gameid+"&guest="+argument4+"&table_id="+argument0+"&score="+string(argument1)+"&sort="+string(argument2)+"&extra_data="+argument3;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_scores_get
//gj_scores_get(string table_id,real limit)
//returns: handle
//Get scores from a list
var url="http://gamejolt.com/api/game/v1/scores/?game_id="+gj_gameid+"&table_id="+argument0+"&limit="+string(argument1);
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,3)
return gj_currhandle;



#define gj_scores_get_user
//gj_scores_add(string table_id,real limit)
//returns: handle
//Get all scores by the current user from a list
var url="http://gamejolt.com/api/game/v1/scores/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&table_id="+argument0+"&limit="+string(argument1);
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_scores_tables
//gj_scores_tables()
//returns: handle
//Get all highscore tables in your game
var url="http://gamejolt.com/api/game/v1/scores/tables/?game_id="+gj_gameid;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_datastore_set_global
//gj_datastore_set_global(string key,string data)
//returns: handle
//Set key (argument0) in data store to data (argument1)
var url="http://gamejolt.com/api/game/v1/data-store/set/",posturl="game_id="+gj_gameid+"&key="+argument0+"&data="+argument1;
posturl+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_post_string(url,posturl);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_datastore_set_user
//gj_scores_add(string key,string data)
//returns: handle
//Set key (argument0) in data store to data (argument1) in the data store of the user
var url="http://gamejolt.com/api/game/v1/data-store/set/",posturl="game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&key="+argument0+"&data="+argument1;
posturl+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_post_string(url,posturl);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_datastore_remove_global
//gj_datastore_remove_global(string key)
//returns: handle
//Removes the key.
var url="http://gamejolt.com/api/game/v1/data-store/remove/?game_id="+gj_gameid+"&key="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_datastore_remove_user
//gj_datastore_remove_user(string key)
//returns: handle
//Removes the key from the user data store.
var url="http://gamejolt.com/api/game/v1/data-store/remove/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&key="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,2)
return gj_currhandle;



#define gj_datastore_get_global
//gj_datastore_get_global(string key)
//returns: handle
//Get data from the datastore key.
var url="http://gamejolt.com/api/game/v1/data-store/?format=dump&game_id="+gj_gameid+"&key="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,4)
return gj_currhandle;



#define gj_datastore_get_user
//gj_datastore_get_user(string key)
//returns: handle
//Get data from the datastore key of the user.
var url="http://gamejolt.com/api/game/v1/data-store/?format=dump&game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&key="+argument0;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,4)
return gj_currhandle;



#define gj_datastore_keys_global
//gj_datastore_keys_global()
//returns: handle
//Get all keys from the datastore.
var url="http://gamejolt.com/api/game/v1/data-store/get-keys/?game_id="+gj_gameid;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_datastore_keys_user
//gj_datastore_keys_user()
//returns: handle
//Get all keys from the datastore.
var url="http://gamejolt.com/api/game/v1/data-store/get-keys/?game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token;
url+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_get(url);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_datastore_update_global
//gj_datastore_update_global(string key,string value,string operation)
//returns: handle
//Set key (argument0) in data store to data (argument1)
var url="http://gamejolt.com/api/game/v1/data-store/update/",posturl="game_id="+gj_gameid+"&key="+argument0+"&value="+argument1+"&operation="+argument2;
posturl+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_post_string(url,posturl);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_datastore_update_user
//gj_datastore_update_user(string key,string value,string operation)
//returns: handle
//Set key (argument0) in user data store to data (argument1)
var url="http://gamejolt.com/api/game/v1/data-store/update/",posturl="game_id="+gj_gameid+"&username="+gj_user+"&user_token="+gj_token+"&key="+argument0+"&value="+argument1+"&operation="+argument2;
posturl+="&signature="+md5_string_utf8(url+gj_privatekey)
var gj_currhandle=http_post_string(url,posturl);
ds_map_add(gj_handletypemap,gj_currhandle,1)
return gj_currhandle;



#define gj_user_autologin
//gj_user_autologin()
//returns: boolean
//Returns boolean: if user logged in
//New way of doing this
if(parameter_count()>=2)
{
    var gj_loop,parameterstring;
    if(os_browser!=browser_not_a_browser)
    {
        for(gj_loop=1;gj_loop<=parameter_count();gj_loop++)
        {
            parameterstring=parameter_string(gj_loop)
            switch(string_copy(parameterstring,1,string_pos("=",parameterstring)-1))
            {
                case "gjapi_username":
                gj_user=string_delete(parameterstring,1,string_pos("=",parameterstring));
                break;
                case "gjapi_token":
                gj_token=string_delete(parameterstring,1,string_pos("=",parameterstring));
                break;
            }
        }
    }
    else
    {
        for(gj_loop=1;gj_loop<parameter_count();gj_loop++)
        {
            parameterstring=parameter_string(gj_loop)
            switch(string_copy(parameterstring,1,string_pos("=",parameterstring)-1))
            {
                case "gjapi_username":
                gj_user=string_delete(parameterstring,1,string_pos("=",parameterstring));
                break;
                case "gjapi_token":
                gj_token=string_delete(parameterstring,1,string_pos("=",parameterstring));
                break;
            }
        }
    }
    return true;
}
else return false;
//Old way of doing this
/*if (file_exists("gjapi-credentials.txt"))
{
    var file=file_text_open_read("gjapi-credentials.txt")
    gj_user=file_text_read_string(file) 
    file_text_readln(file)
    gj_token=file_text_read_string(file)
    file_text_close(file)
    return true;
}
else
return false;