draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
if(global.show_timer){
	draw_set_color(c_black);
	draw_text(x,y-26,"Hp: " + string(hp));
}
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
}
if(flash>0){
	shader_set(Sh_red);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}