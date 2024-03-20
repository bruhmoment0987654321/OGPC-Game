up = keyboard_check_pressed(global.scroll_up);
down = keyboard_check_pressed(global.scroll_down);
select = keyboard_check_pressed(global.select);
s = id; //attaching the variables to specific menus
if(global.cantpress)||(global.cantpress_commands){
	up = 0;
	down = 0;
	select = 0;
}

//store number of options into current menu
op_length = array_length(options[menu_level]);
//moving though menu
pos += down-up;
if(pos >= op_length) pos = 0;
if(pos < 0) pos = op_length-1;
#region selecting options
if(select){
	var sml = menu_level;
	switch(menu_level){
		//main pause menu
		case 0:
			switch(pos){		
				case 0: break;

				case 1: break;
				
			}
		break;

	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
	}
}
#endregion