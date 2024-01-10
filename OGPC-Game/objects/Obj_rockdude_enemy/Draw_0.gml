event_inherited();
	//draw_text(x,y-26,hp);
	if(global.show_hitboxes){
		draw_set_color(c_yellow);
		draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
	}