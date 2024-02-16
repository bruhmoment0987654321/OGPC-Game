function CreateSectionFromString(_x,_y,_sectionString){
	var _currentXsection = _x;
	var _currentYsection = _y;
	var _currentStringData = _sectionString;
	
	//place blocks in their places inside of the chunk
		for(var c = 0; c < string_length(_currentStringData);c++){
			switch(string_char_at(_currentStringData,c+1)){
				case 0: break; //place nothing
				case 1: //place block
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Walls",Obj_solid);
				break;
				case 2: //place sand
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Walls",Obj_sand);
				break;
				//shop door
				case "D":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Other",Obj_shop_door);
				break;
				//shop sign
				case "=":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Other",Obj_shop_sign);
				break;
				//breakable block
				case "3":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Walls",Obj_breakable_solid);
				break;
				case "*":
					if(spawn_player){
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Player",Obj_spawn_point);
						spawn_player = false;
						spawn_player_x = _currentXsection;
						spawn_player_y = _currentYsection;
					}
				break;
				case "H":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Walls",Obj_ladder);
				break;
				case "E":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Enemy",Obj_enemy_rand);
				break;
				case "T":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Walls",Obj_spring);
				break;
				case "B":
					if !In_between(_currentXsection,spawn_player_x-1,spawn_player_x+1)
					&& !In_between(_currentYsection,spawn_player_y+1,spawn_player_y-1)
					&& sections[_currentXsection][_currentYsection] != 0 
					&& make_battery == true {
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Other",Obj_battery1x1);
						make_battery = false;
						battery_x = _currentXsection;
						battery_y = _currentYsection;
					}
				break;
				case "X":
					if !In_between(_currentXsection,battery_x-1,battery_x+1)
					&& !In_between(_currentXsection,battery_x-1,battery_x+1)
					&& sections[_currentXsection][_currentYsection] != 0 
					&& spawn_end == true {
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize*border,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Other",Obj_end_level1x1);
						spawn_end = false;
						spawn_end_x = _currentXsection;
						spawn_end_y =  _currentYsection;
					}
				break;
			}
		}
		
}