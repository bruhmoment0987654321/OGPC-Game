event_inherited();
if(global.show_invis){
	if(sign(Obj_player.x - x) == image_xscale)
	&&((abs(Obj_player.y - y) < 16))
	&&(abs(Obj_player.x-x) <= dist)
	&&(collision_line(x,y-16,Obj_player.x,Obj_player.y-16,Obj_solid,false,false) == noone) draw_set_color(c_red);
	else draw_set_color(c_lime);
	
	draw_line(x,y-16,Obj_player.x,Obj_player.y-16);	
}
