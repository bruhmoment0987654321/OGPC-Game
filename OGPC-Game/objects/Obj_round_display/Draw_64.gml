draw_set_halign(fa_center);
var color = c_white;
var string_ = "Level " + string(global.rounds)
var width = string_width(string_);
var height = string_height(string_);
			
draw_sprite_ext(Spr_pixel,0,316-(width*1.5),71,(width*3)+6,(height*2)-5,0,c_black,clamp(alpha,0,0.5));
draw_text_transformed_color(320,75,string_,scale,scale,0,color,color,color,color,alpha);
draw_set_halign(fa_left);