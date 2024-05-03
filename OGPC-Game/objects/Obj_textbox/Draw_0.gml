

next_page = keyboard_check_pressed(global.select);
if(space_timer>0){
	space_timer--;
	next_page = 0;
}
if global.game_state == GAME_STATE.PAUSED {
	next_page = 0;
}
//text box position
x = camera_get_view_x(view_camera[0])+x_offset;
y = camera_get_view_y(view_camera[0])+y_offset;
#region setup before the text is drawn
if(!setup){
	setup = true;
	draw_set_font(F_Silver);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	//go through pages
	page_number = array_length(text);
	textbox_amount = page_number;
	for(var i = 0; i < page_number; i++){
		//finding out how many character the object needs to store for each page
		text_length[i] = string_length(text[i]);
		//setting indiviual characters and finding out where they are
		for(var j = 0; j < text_length[i]; j++){
			var char_pos = j+1;
			
			//store indiviual characters in char array
			char[j][i] = string_char_at(text[i],char_pos)
			
			//get current width of line
			var text_up_to_char = string_copy(text[i],1,char_pos);
			var current_text_w = string_width(text_up_to_char) - string_width(char[j][i]);
			
			//get the last free space
			if(char[j][i] == " ") last_free_space = char_pos+1;
			
			//get line breaks
			if(current_text_w - line_break_offset[i] > line_width){
				line_break_pos[line_break_num[i]][i] = last_free_space;
				line_break_num[i]++;
				var text_up_to_last_space = string_copy(text[i],1,last_free_space);
				var last_free_space_string = string_char_at(text[i],last_free_space);
				line_break_offset[i] = string_width(text_up_to_last_space) - string_width(last_free_space_string);
			}
		}
		//getting the character coordinates
		for(var j = 0; j < text_length[i]; j++){
			var char_pos = j+1;
			//coordinates
			var text_x = x + Border;
			var text_y = y + Border;
			
			//get current width of line
			var text_up_to_char = string_copy(text[i],1,char_pos);
			var current_text_w = string_width(text_up_to_char) - string_width(char[j][i]);
			var text_line = 0;
			
			//compesate for line breaks
			for(var k = 0; k < line_break_num[i]; k++){
				//if(current looping character is after a line break)
				if(char_pos >= line_break_pos[k][i]){
					var str_copy = string_copy(text[i],line_break_pos[k][i],char_pos-line_break_pos[k][i]);
					current_text_w = string_width(str_copy);
					
					//record the line this character should be on
					text_line = k+1;
				}
			}
			//find coordinates based on the new info 
			char_x[j][i] = text_x + (current_text_w*scale)
			char_y[j][i] = text_y + (text_line*space*scale)
		}
	}
}
#endregion
//typing the text
if(text_pause_timer <= 0){
	if(draw_char < text_length[page]){
		if global.game_state != GAME_STATE.PAUSED draw_char += text_spd;
		draw_char = clamp(draw_char,0,text_length[page]);
		var check_char = string_char_at(text[page],draw_char);
		if(check_char == ".")||(check_char == "?")||(check_char == ","){
			text_pause_timer = text_pause_time;
			
		}else{
			if(snd_count > 0){
				snd_count--;
			}else{
				snd_count = snd_delay;
				audio_play_sound(snd[page],8,false);
			}
		}
	}
}else{
	text_pause_timer--;	
}
#region flip through pages 
if(next_page){
	//if text is done typing
	if(draw_char == text_length[page]){
		//show icon
		draw_sprite(Spr_text_click,0,x+width-50,y+height-50);
		//go to next page
		if(page < page_number-1){
			page++;
			draw_char = 0;
			
		}else{
			instance_destroy();	
		}
	//if not?
	}else{
		//fill up textbox early
		draw_char = text_length[page];	
	}
}
#endregion

//draw the text box
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);
//draw text
for(var t = 0; t < draw_char; t++){
	//cool effects
	//wavy text
	var float_y = 0;
	if(float_text[t][page]){
		//number should be 1-8 for it to not be a bit wonky
		float_dir[t][page] += float_amount[t][page];	
		float_y = dsin(float_dir[t][page])*(float_multiplier[t][page]);
	}
	
	//shaky text
	var shake_x = 0;
	var shake_y = 0;
	if(shake_text[t][page]){
		shake_timer[t][page]--;
		if(shake_timer[t][page] <= 0){
			shake_timer[t][page] = irandom_range(4,8);
			shake_dir[t][page] = irandom(360);
		}
		if(shake_timer[t][page] <= 2){
			shake_x = lengthdir_x(1,shake_dir[t][page]);
			shake_y = lengthdir_y(1,shake_dir[t][page]);	
		}
		
	}
	
	//the text
	draw_text_transformed_color(char_x[t][page]+shake_x,char_y[t][page]+shake_y+float_y,char[t][page],scale,scale,0,col_1[t][page],col_2[t][page],col_3[t][page],col_4[t][page],1);
}
if(draw_char == text_length[page]){
	//show icon
	draw_sprite(Spr_text_click,0,x+width-35,y+height-25);
}