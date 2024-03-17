function GenerateLevel(){
	//generate border
	for(var _x = 0; _x < room_width;_x+= Gridsize){
		//top border
		instance_create_layer(_x, 0, "Walls",Obj_solid);	
		instance_create_layer(_x, -Gridsize, "Walls",Obj_solid);	
		
		//bottom border
		instance_create_layer(_x,room_height-Gridsize*2,"Walls",Obj_solid);
		instance_create_layer(_x,room_height-Gridsize,"Walls",Obj_solid);
	}
	for(var _y = Gridsize; _y < room_height-Gridsize;_y+= Gridsize){
		//left
		instance_create_layer(0, _y, "Walls",Obj_solid);	
		instance_create_layer(-Gridsize, _y, "Walls",Obj_solid);	
		
		//right
		instance_create_layer(room_width+Gridsize*2,_y,"Walls",Obj_solid);
		instance_create_layer(room_width-Gridsize,_y,"Walls",Obj_solid);
	}
	
	//create sections for level
	var sectionStringData = "";
	for(_y = 0; _y < ySections; _y++){
		for (_x = 0; _x < xSections; _x++){
			sectionStringData = LoadRandomSection(_x,_y,sections[_x][_y]);	
			CreateSectionFromString(_x,_y,sectionStringData);
		}
	}
}