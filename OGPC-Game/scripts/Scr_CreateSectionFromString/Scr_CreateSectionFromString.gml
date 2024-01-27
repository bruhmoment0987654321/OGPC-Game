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
			}
		}
		
}