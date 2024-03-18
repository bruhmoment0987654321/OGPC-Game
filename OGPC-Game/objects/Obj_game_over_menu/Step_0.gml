event_inherited();
#region selecting options
if(select){
	switch(pos){
		//start game over
		case 0: room_goto(Rm_prehistoric); Start_over(); break;
		//back to title
		case 1: room_goto(Rm_title); Start_over(); break;
	}
}
#endregion