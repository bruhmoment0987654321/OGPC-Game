enable_key = keyboard_check_pressed(192);
backspace = keyboard_check(vk_backspace);
enter = keyboard_check_released(vk_enter);
delete_ = keyboard_check(vk_delete);
up_key = keyboard_check(vk_up)

//console enabling
if(enable_key) Console_enable();

//command handling
if(!enable){ 
	global.cantpress = false;
	exit;
}else global.cantpress = true;
//backspacing
if(backspace)&&(string_length(text_currentline) > 3){
	if(erase >= 3){
		text_currentline = string_copy(text_currentline,1,string_length(text_currentline)-1);
		erase = 0;
	}else erase = 3;
}
if(delete_)&&(string_length(text_currentline) > 3){
	if(erase >= 1){
		text_currentline = string_copy(text_currentline,1,string_length(text_currentline)-1);
		erase = 0;
	}else erase++; text_currentline = text_def;	
}

//command parsing
var command = "";
var arg;
arg[0] = "";
var argCount = 0;

//putting previous command
if(up_key){
	text_currentline = past_command;	
}

//execute command
if(enter)&& (string_length(text_currentline) > 3){
	text_currentline = text_currentline + " ";
	var word = "";
	
	for(var i=3; i < string_length(text_currentline);i++){
		
		var nchar = string_char_at(text_currentline,i+1);
		
		if(nchar != " "){
			word += nchar;
		}else{
			if(command = ""){
				command = asset_get_index(word);
				if(script_exists(command)){
					command = word;
					word = "";
					continue;
				}else{
					//command not recongnized
					Log(text_currentline);
					Log("Command is not known. Did you spell it right?");
					
					command = "";
					word = "";
					break;
				}
			}else{
				//put arguments in array
				arg[argCount] = word;
				argCount++;
				word = "";
			}
		}
	
	}
	//execute 
	if(script_exists(asset_get_index(command))){
		past_command = text_currentline;
		Log(text_currentline);
		script_execute_ext(asset_get_index(command),arg);
		
	}
}

//conflict keys
if(keyboard_lastkey != -1){
	switch(keyboard_lastkey){
		case 96:
		case vk_shift:
		case vk_lshift:
		case vk_rshift:
		case vk_lalt:
		case vk_alt:
		case vk_control:
		case vk_lcontrol:
		case vk_rcontrol:
		case vk_escape:
		case vk_enter:
		case vk_up:
		case vk_down:
		case vk_right:
		case vk_left:
		case vk_printscreen:
		case vk_f1:
		case vk_f2:
		case vk_f3:
		case vk_f4:
		case vk_f5:
		case vk_f6:
		case vk_f7:
		case vk_f8:
		case vk_f9:
		case vk_f10:
		case vk_f11:
		case vk_f12:
		case vk_backspace:
			keyboard_lastkey = -1;
			keyboard_lastchar = -1;
			exit;
		break;
	}
	keyboard_lastkey = -1;
	text_currentline += keyboard_lastchar;
	
}
