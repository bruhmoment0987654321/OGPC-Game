///@desc have all the blocks and stuff for the room
function Initialize_room(){
	grid_size = 32; //size of tiles and objects in-game
	
	xSections = 4; // how many rooms in x axis
	ySections = 4; //how many rooms in y axis
	
	border = 2;
	
	sections = []; // declare room array
	sectionTilesX = 10; //tile size of sections left to right
	sectionTilesY = 8;  //tile size of sections top to bottom
	
	sectionWidth = sectionTilesX*grid_size; //width of seciton in pixels
	sectionHeight= sectionTilesY*grid_size; //height of section in pixels
	
	room_width = (xSections*sectionWidth) + (grid_size*border); //size of room, width edition
	room_height = (ySections*sectionHeight) + (grid_size*border); //size of room, height edition
	
	for(var _y = 0; _y < ySections; _y++)
		for(var _x = 0; _x < xSections; _x++)
			sections[_x][_y] = 0;
			
	//create main path 
	CreateMainPath();
	
	for(var _y = 0; _y < ySections; _y++)
		show_debug_message(string(sections[0][_y]) + string(sections[1][_y])+ string(sections[2][_y])+string(sections[3][_y]))
	//initialize sections 
	
	//create the level
	
	//clean up dat memory (de-initialize sections  )
	
}