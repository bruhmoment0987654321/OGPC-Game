function CreateSectionFromString(_x,_y,_sectionString){
	var _currentXsection = _x;
	var _currentYsection = _y;
	var _currentStringData = _sectionString;
	
	//place blocks in their places inside of the chunk
		for(var c = 0; c < string_length(_currentStringData);c++){
			switch(string_char_at(_currentStringData,c+1)){
				case 0: break; //place nothing
				case 1: //place block
					var inst_x = (_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize
					var inst_y = (_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize
					instance_create_layer(inst_x,inst_y, "Walls",Obj_solid);
					
				break;
				case 2: //place sand
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Walls",Obj_sand);
				break;
				//shop door
				case "D":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_shop_door);
				break;
				//breakable block
				case 3:
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Walls",Obj_breakable_solid);
				break;
				//spawnpoint
				case "*":
					if(spawn_player){
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Player",Obj_spawn_point);
						spawn_player = false;
						spawn_player_x = _currentXsection;
						spawn_player_y = _currentYsection;
					}
				break;
				//ladder
				case "H":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_ladder);
				break;
				//random enemy
				case "E":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Enemy",Obj_enemy_rand);
				break;
				//spring
				case "T":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_spring);
				break;
				//battery
				case "B":
					if !In_between(_currentXsection,spawn_player_x-1,spawn_player_x+1)
					&& !In_between(_currentYsection,spawn_player_y+1,spawn_player_y-1)
					&& !In_between(_currentXsection,spawn_end_x-1,spawn_end_x+1)
					&& !In_between(_currentYsection,spawn_end_y-1,spawn_end_y+1)
					&& sections[_currentXsection][_currentYsection] != 0 
					&& make_battery == true {
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_battery1x1);
						make_battery = false;
						battery_x = _currentXsection;
						battery_y = _currentYsection;
					}
				break;
				//exit
				case "X":
					if !In_between(_currentXsection,battery_x-1,battery_x+1)
					&& !In_between(_currentYsection,battery_x-1,battery_x+1)
					&& !In_between(_currentXsection,spawn_player_x-1,spawn_player_x+1)
					&& !In_between(_currentYsection,spawn_player_y+1,spawn_player_y-1)
					&& sections[_currentXsection][_currentYsection] != 0 
					&& spawn_end == true {
						instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_end_level1x1);
						spawn_end = false;
						spawn_end_x = _currentXsection;
						spawn_end_y =  _currentYsection;
					}
				break;
				//50/50 chance for chest
				case "c":
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Other",Obj_rand_chest);
				break;
				case "W": //place sand
					instance_create_layer((_currentXsection*sectionWidth)+(c % sectionTilesX*Gridsize)+Gridsize,
					(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize, "Walls",Obj_spike);
				break
			}
		}
		
}