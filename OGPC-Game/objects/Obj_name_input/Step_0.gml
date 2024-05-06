if(keyboard_check(vk_anykey) && string_length(text) < 15){
    text = string(keyboard_string);
}
if(keyboard_check_pressed(vk_backspace)){
    text = string_delete(text,string_length(text),1);
	keyboard_string = "";
}

if keyboard_check(vk_delete){
	keyboard_string = "";	
}

if keyboard_check_pressed(vk_enter){
	keyboard_string = "";
	instance_destroy();
}