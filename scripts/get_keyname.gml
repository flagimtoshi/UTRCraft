///get_keyname( vk_key );

var out_ = "NO KEY"; // set special keys
    switch(argument0){
    case vk_tab: out_ = "TAB"; break;
    case vk_space: out_ = "SPACE"; break;
    case vk_rcontrol: out_ = "R CONTROL"; break;
    case vk_control: out_ = "CONTROL"; break;
    case vk_lcontrol: out_ = "L CONTROL"; break;
    case vk_shift: out_ = "SHIFT"; break;
    
    case vk_up: out_ = "UP"; break;
    case vk_left: out_ = "LEFT"; break;
    case vk_right: out_ = "RIGHT"; break;
    case vk_down: out_ = "DOWN"; break;
    
    case vk_backspace: out_ = "BACKSPACE"; break;
    case vk_rshift: out_ = "RIGHT SHIFT"; break;
    case vk_escape: out_ = "ESCAPE"; break;
    case vk_home: out_ = "HOME"; break;
    case vk_ralt: out_ = "R ALT"; break;
    case vk_alt: out_ = "ALT"; break;
    case vk_lalt: out_ = "L ALT"; break;
    case vk_delete: out_ = "DELETE"; break;
    case vk_enter: out_ = "ENTER"; break;
    
    case 20: out_ = "CAPS Lk"; break;
    
    
    // etc
    default: out_ = chr(argument0); break;
    }
    
return out_
