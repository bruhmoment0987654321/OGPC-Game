//used the bitmapping from this link: https://github.com/tutsplus/Tile-Bitmasking/tree/master
function CreateTiles(_x,_y,_sectionString,tileset_type){
	var _currentXsection = _x;
	var _currentYsection = _y;
	var _currentStringData = _sectionString;
	index_values = ds_map_create();
	Add_Autotile_Values(index_values)
	for(var c = 0; c < string_length(_currentStringData);c++){
			switch(string_char_at(_currentStringData,c+1)){
				case 1:
					
				break;
			}
	}
}