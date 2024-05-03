event_inherited();
#region selecting options
if(select){
	var sml = menu_level;
	
	switch(pos){
	//main menu
		//first question
		case 0:
			with(instance_create_depth(x,y,-999,Obj_textbox)){
				height = 80;
				y_offset = 220;
				GameText(other.s.text_talk_id1);
			}
		break;
		//second question
		case 1:
			with(instance_create_depth(x,y,-999,Obj_textbox)){
				height = 100;
				y_offset = 220;
				GameText(other.s.text_talk_id2);
			}
		break;
		//third question
		case 2:
			with(instance_create_depth(x,y,-999,Obj_textbox)){
				height = 80;
				y_offset = 220;
				GameText(other.s.text_talk_id3);
			}
		break;
		
		case 3:
			with(instance_create_depth(x,y,-999,Obj_textbox)){
				height = 80;
				y_offset = 220;
				GameText(other.s.text_talk_id4);
				menu_exited = true;
			}
			instance_destroy();
		break;
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion