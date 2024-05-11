draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
	draw_set_color(c_black);
	draw_text(x-(sprite_width/2)-40,y-sprite_height-20,"Prev State: " + pre_state);
	draw_text(x-(sprite_width/2)-40,y-sprite_height,"State: " + state);
}
if(flash>0){
	shader_set(Sh_red);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}