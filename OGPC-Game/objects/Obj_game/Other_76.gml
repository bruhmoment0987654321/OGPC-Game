if(event_data[? "event_type"] == "sequence event"){
	if(event_data[? "message"] == "rm"){
		room_goto(Rm_gameover);
	}
}

