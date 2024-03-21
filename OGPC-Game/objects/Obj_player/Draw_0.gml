var interval = 12;
if((invincible_timer % interval)<= interval/2){
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
}else{
	shader_set(Sh_White);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);	
}

