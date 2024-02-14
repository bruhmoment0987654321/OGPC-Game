// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EncodeTemplateToString(){
	xTiles = room_width/Gridsize;
	yTiles = room_height/Gridsize;
	
	var levelData = "";
	
	for(var _y = 0; _y < yTiles; _y++) 
		for(var _x = 0; _x < xTiles; _x++){
			inst = instance_position(_x*Gridsize,_y*Gridsize,all);
			if inst != noone {inst = inst.object_index}
			
			switch(inst){
				case noone: levelData += "0"; break;
				//these don't work?//
				case Obj_shop_door1x1: levelData += "D" break;
				case Obj_shop_sign: levelData += "=" break;
				case Obj_enemy_rand: levelData += "E" break;
				//--------//
<<<<<<< HEAD
=======

>>>>>>> 4bd03b3ec7b1ff17169c2ee6d34f85d1f82d24d2
				case Obj_spawn_point: levelData += "*" break;
				case Obj_solid: levelData += "1"; break;
				case Obj_sand: levelData += "2"; break;
				case Obj_breakable_solid: levelData += "3"; break;
				case Obj_ladder: levelData += "H";
				case Obj_spring: levelData += "T" break;
			}
		}
	saveDir = get_save_filename("*.txt","Section_"+ room_get_name(room)+".txt");
	file = file_text_open_write(saveDir);
	file_text_write_string(file,levelData);
	file_text_close(file);
	show_message("Level Data Saved! ["+string(levelData)+"]");
}