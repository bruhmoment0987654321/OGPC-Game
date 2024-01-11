function rm(_room){
	var Room = asset_get_index(_room);
	if(Room != -1){
		room_goto(Room);
	}else{
		Log("Room does not exist!");
	}
}