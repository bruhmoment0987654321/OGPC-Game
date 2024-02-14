///@desc have all the blocks and stuff for the room
function Initialize_room(){
	
	border = 2 // the block border around the room
	
	spawn_player = true; // spawn the player in the left-right sections
	spawn_player_x = 0; //data on which section the player is in x-axis
	spawn_player_y = 0; //data on which section the player is in y-axis
	spawn_end = true;
	spawn_end_x = 0;
	spawn_end_y = 0;
	
	make_battery = true;
	
	sections = []; // declare room array
	
	xSections = 5; //amount of sections in a room left to right
	ySections = 5; //amount of sections in a room top to bottom
	
	shop_count = 0; //have a max shop number so they won't spawn over and over again
	
	room_width = (xSections*sectionWidth) + (Gridsize*border); //size of room, width edition
	room_height = (ySections*sectionHeight) + (Gridsize*border); //size of room, height edition
	
	for(var _y = 0; _y < ySections; _y++)
		for(var _x = 0; _x < xSections; _x++)
			sections[_x][_y] = 0;
			
	//create main path 
	CreateMainPath();
	
	for(var _y = 0; _y < ySections; _y++){
		show_debug_message(string(sections[0][_y]) + string(sections[1][_y])+ string(sections[2][_y])+string(sections[3][_y]));
	}
	//initialize sections 
	InitializeAllSections();
	//create the level
	GenerateLevel();
	//clean up dat memory (de-initialize sections)
	ds_list_destroy(sectionLeftBottomRight);
	ds_list_destroy(sectionLeftRight);
	ds_list_destroy(sectionLeftTopRight);
	ds_list_destroy(sectionZero);
	ds_list_destroy(sectionShopRight)
}