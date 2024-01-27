function LoadRandomSection(_x,_y,_section){
	sectionType = _section;
	//you can add a case for zero but for now, you can add a random room for zero
	if(sectionType == 0) return "00000000000000000000000000000000000000000000000000000000000000000000000000000000";
	switch(sectionType){
		case Left:
			var _return_string = ds_list_find_value(sectionLeftRight, irandom(ds_list_size(sectionLeftRight)-1));
			if(sections[_x][clamp(_y-1,0,sectionTilesY)] == 2){
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2)+1,ord("0"));
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2),ord("0"));
			}
			return _return_string;
		break;
		case Right:
			var _return_string = ds_list_find_value(sectionLeftBottomRight, irandom(ds_list_size(sectionLeftBottomRight)-1));
			if(sections[_x][clamp(_y-1,0,sectionTilesY)] == 2){
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2)+1,ord("0"));
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2),ord("0"));
			}
			return _return_string;
		break;
		case Down:
			return ds_list_find_value(sectionLeftTopRight,irandom(ds_list_size(sectionLeftTopRight)-1));
		break;
	}

}