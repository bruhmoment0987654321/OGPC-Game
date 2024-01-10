event_inherited();

//draw_text(x,y-26,hp);
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
	if(state == "chase" || state == "attack"){
		draw_circle(x,y-16,attack_radius,true);
		draw_circle(x+15*image_xscale,y-16,hit_radius,true);	
	}
}
