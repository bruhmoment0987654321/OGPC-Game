depth = -9999;
//textbox size variables
width = 576;
height = 160;

border = 22;
space = 14;

scale = 2;

line_width = (width/scale) - border*2;

global.cantpress = true;
with(Obj_shop_menu){
	alpha = 0;	
}

space_timer = 3;
//text variables
page = 0;
page_number = 0;
text[0] = " ";
text_length[0] = string_length(text[0]);
char[0][0] = "";
char_x[0][0] = 0;
char_y[0][0] = 0;
draw_char = 0;
text_spd = 1;
setup = false;

//sound
snd_delay = 3;
snd_count = snd_delay;
//effects
Set_defaults_for_text();
last_free_space = 0;
text_pause_time = 16;
text_pause_timer = 0;