event_inherited();
if(global.show_hitboxes){
	if(state == "chase" || state == "attack"){
		draw_set_color(c_red);
		draw_circle(x,y-attack_circ_y_offset,attack_radius,true);
		draw_set_color(c_purple);
		draw_circle(x+hit_circ_x_offset*image_xscale,y-hit_circ_y_offset,hit_radius,true);	
	}
	draw_set_color(c_blue);
	draw_circle(x,y-16,buff_radius,true);
}
