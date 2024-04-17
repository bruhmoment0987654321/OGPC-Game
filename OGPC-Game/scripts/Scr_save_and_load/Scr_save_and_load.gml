function Load_Game(){
	if file_exists("save_data.txt"){
		var file = file_text_open_read("save_data.txt");
		var json = file_text_read_string(file);
		var struct = json_parse(json);
		global.first_time_playing = struct.first_time_playing;
		
	}
}

function Load_Default_Scores(){
	highscore_add("TheLegend27",50000);
	highscore_add("Sily ;P",10000);
	highscore_add("The Guy",9999);
	highscore_add("It's Over...",9001);
	highscore_add("I know",6969);
	highscore_add("('_')",4005);
	highscore_add("Xx_fRaNk_jOe_xX",5678);
	highscore_add("Damn...",1);
	highscore_add("Rofl ^.^",777);
	highscore_add("Dark_mage1",500);	
}

function Save_Game(){
	var name = get_string_async("Name for Hi-score.","Some1");
	var _save_struct = {
		first_time_playing : false,
	}
	
	var _string = json_stringify(_save_struct);
	var file = file_text_open_write("save_data.txt");
	
	file_text_write_string(file,_string);
	file_text_close(file);
}