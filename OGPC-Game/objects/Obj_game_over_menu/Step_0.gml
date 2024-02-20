up = keyboard_check_pressed(global.scroll_up);
down = keyboard_check_pressed(global.scroll_down);
select = keyboard_check_pressed(global.select);
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
	switch(pos){
		//start game over
		case 0: Start_over(); room_goto(Rm_prehistoric); break;
		//back to title
		case 1: Start_over(); room_goto(Rm_title); break;
	}
}
#endregion