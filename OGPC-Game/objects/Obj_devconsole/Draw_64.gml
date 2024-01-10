if(!enable) exit;

//draw backgrounds 
draw_set_alpha(text_backgroundAlpha);
draw_rectangle_color(0,0,wsize,hsize,text_backgroundColor,text_backgroundColor,text_backgroundColor,text_backgroundColor,false);

draw_set_alpha(text_lineAlpha);
draw_rectangle_color(0,hsize-20,wsize,hsize,text_lineBackground,text_lineBackground,text_lineBackground,text_lineBackground,false);

//draw text array
draw_set_font(font);
draw_set_valign(fa_bottom);
var text_lines = array_length(text_);

for (var i = 0; i < text_lines; i++){
	var line_size;
	line_size = string_height(string_hash_to_newline(text_[i]))/2;
	draw_text_ext_color(4,hsize-(i*line_size)-10,string_hash_to_newline(text_[i]),-1,wsize,text_primaryColor,text_primaryColor,text_primaryColor,text_primaryColor,text_primaryAlpha);
}
//draw line text
draw_set_valign(fa_top);
draw_text_color(4,hsize-14,string_hash_to_newline(text_currentline+cursor),text_lineColor,text_lineColor,text_lineColor,text_lineColor,text_lineAlpha);