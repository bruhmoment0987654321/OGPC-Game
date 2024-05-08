if global.mouse_move { 
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,alpha);

	var _color = color;
	if hovered _color = color_hovered;
	
	draw_set_halign(fa_center);
	
	draw_text_transformed_color(x+(sprite_width/2)+x_offset,y+y_offset,text,scale,scale,0,_color,_color,_color,_color,1);
}