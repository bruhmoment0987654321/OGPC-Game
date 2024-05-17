draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
	draw_set_color(c_black);
	draw_text(x-((sprite_width/2)-40)*sign(image_xscale),y-(sprite_height/2)-20,"Prev State: " + pre_state);
	draw_text(x-((sprite_width/2)-40)*sign(image_xscale),y-sprite_height/2,"State: " + state);
	
	if state == "bite_attack" || state == "bite" {
		draw_circle_color(x+50*image_xscale,y-48,hit_radius,c_orange,c_orange,true);
		draw_circle_color(x+45*image_xscale,y-48,attack_radius,c_red,c_red,true);
	}
}
if(flash>0){
	shader_set(Sh_red);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}