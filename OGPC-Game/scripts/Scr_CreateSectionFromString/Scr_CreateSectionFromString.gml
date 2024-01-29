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
						(_currentYsection*sectionHeight)+(floor(c/sectionTilesX)*Gridsize)+Gridsize*border, "Other",Obj_spawn_point);
						spawn_player = false;
					}
				break;
			}
		}
		
}