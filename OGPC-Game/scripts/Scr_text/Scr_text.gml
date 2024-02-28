function Set_defaults_for_text(){
	line_break_pos[0][page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;

	//variables for single letters/characters
	for(var i = 0; i < 500; i++){
		col_1[i][page_number] = c_white;	
		col_2[i][page_number] = c_white;	
		col_3[i][page_number] = c_white;	
		col_4[i][page_number] = c_white;	
		
		float_text[i][page_number] = 0;
		float_angle_amount[i][page_number] = 20;
		float_dir[i][page_number] = i*float_angle_amount[i][page_number];
		float_multiplier[i][page_number] = 0;
		float_amount[i][page_number] = -6
		float_multiplier[i][page_number] = 1
		
		shake_text[i][page_number] = 0;
		shake_dir[i][page_number] = irandom(360);
		shake_timer[i][page_number] = irandom(4);
	}
	snd[page_number] = Snd_caveman_talk;
}

//-----------------------------------------text vfx----------------------------//

//text color
///@param 1st_char
///@param last_char
///@param col_1
///@param col_2
///@param col_3
///@param col_4
function Text_Color(_start,_end,col1,col2,col3,col4){
	for(var i = _start; i <= _end; i++){
		col_1[i][page_number-1] = col1;
		col_2[i][page_number-1] = col2;
		col_3[i][page_number-1] = col3;
		col_4[i][page_number-1] = col4;
		
	}
}
//wavy text
///@param 1st_char
///@param last_char
///@param amount
///@param angle_speed
///@param [multiplied]
function Text_Float(_start,_end,_amount,_angle_speed){
	for(var i = _start; i <= _end; i++){
		float_text[i][page_number-1] = true;
		float_amount[i][page_number-1] = _amount;
		float_angle_amount[i][page_number-1] = _angle_speed;
		//multiplier for wavy text
		if(argument_count > 3){
			float_multiplier[i][page_number-1] = argument[3];
		}
	}
}

//shakey text
///@param start
///@param end
function Text_Shake(_start,_end){
	for(var i = _start; i <= _end; i++){
		shake_text[i][page_number-1] = true;
	}
}

///@param text
///@param [character]
function Text(_text){
	Set_defaults_for_text();
	text[page_number] = _text;
	page_number++;
	if(argument_count > 1){
		switch(argument[1]){
			case "caveman":
				snd[page_number] = Snd_caveman_talk;
			break;
			
			case "":
			
			break;
		}
	}
}

