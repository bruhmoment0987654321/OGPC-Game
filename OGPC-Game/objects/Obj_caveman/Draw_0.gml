event_inherited();
if(global.show_hitboxes){
	if(state == "chase" || state == "attack"){
		draw_set_color(c_red);
		draw_circle(x,y-16,attack_radius,true);
		draw_circle(x+15*image_xscale,y-16,hit_radius,true);	
	}
}
