function LoadRandomSection(_x,_y,_section){
	sectionType = _section;
	//you can add a case for zero but for now, you can add a random room for zero
	switch(sectionType){
		case 0:
			var _return_string = ds_list_find_value(sectionZero,irandom(ds_list_size(sectionZero)-1));
			//this is for the shop that appears in the right
			if(_y < 3)&&(sections[clamp(_x-1,0,sectionTilesX)][_y] != 0)&&(shop_count < 1)&&(Chance(0.3)){
				var _return_string = ds_list_find_value(sectionShopRight,irandom(ds_list_size(sectionShopRight)-1));
				shop_count++;
			}
			return _return_string;
		break;
		case LR:
			var _return_string = ds_list_find_value(sectionLeftRight, irandom(ds_list_size(sectionLeftRight)-1));
			if(sections[_x][clamp(_y-1,0,sectionTilesY)] == 2){
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2)+1,ord("0"));
				_return_string = string_set_byte_at(_return_string,floor(sectionTilesX/2),ord("0"));
			}
			return _return_string;
		break;
		case Intersect:
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