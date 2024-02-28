event_inherited();
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