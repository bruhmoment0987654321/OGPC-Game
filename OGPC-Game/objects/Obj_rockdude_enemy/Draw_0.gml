event_inherited();
if(global.show_lines){
	if((point_direction(Obj_player.x,Obj_player.y,x,y) > dist)){
		draw_set_color(c_red);
	}else draw_set_color(c_lime);	
	draw_line(Obj_player.x,Obj_player.y-16,x,y-16);
}