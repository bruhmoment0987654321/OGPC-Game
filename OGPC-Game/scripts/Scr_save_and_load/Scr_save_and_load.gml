function Load_Game(){
	if file_exists("save_data.txt"){
		var file = file_text_open_read("save_data.txt");
		var json = file_text_read_string(file);
		var struct = json_parse(json);
		Obj_game.highscore = struct.highscore;
	}
}
function Save_Game(){
	var _save_struct = {
		highscore : score
	}
	
	var _string = json_stringify(_save_struct);
	var file = file_text_open_write("save_data.txt");
	
	file_text_write_string(file,_string);
	file_text_close(file);
}