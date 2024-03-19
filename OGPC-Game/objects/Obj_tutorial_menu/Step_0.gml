

global.show_GUI = false;
event_inherited();
switch(menu_level){
	case 0: question = "Do you want to play the tutorial?"; break;
	case 1: question = "Are you sure (;_;)?"; break;
}
#region selecting options
if(select){
	var sml = menu_level;
	switch(menu_level){
		//main tutorial menu
		case 0:
			//do you want to play the tutorial?
			switch(pos){
				//yes
				case 0: instance_destroy(); break;
				//no
				case 1: menu_level = 1;break;
				
			}
		break;
		//No option sub menu
		case 1:
			//are you sure
			switch(pos){
				//yes
				case 0:
					global.playercant = false;
					room_goto(Rm_prehistoric);
					Start_over();
				break;
				//no
				case 1: 
					menu_level = 0;
				break;
			}
		break;
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion