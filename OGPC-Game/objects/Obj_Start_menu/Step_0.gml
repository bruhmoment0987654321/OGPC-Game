up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
select = keyboard_check_pressed(vk_space);
x = 256
y=128
if(global.cantpress){
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
		//main shop menu
		case 0:
			switch(pos){
				//open the options to buy
				case 0: room_goto(Rm_level1)  break;
				//talk to the shopkeeper
				case 1:   break;
				//go back to the level you were in
				case 2: game_end() break;
			}
		break;
		
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion