if(!triggered)&&(point_distance(x,y,Obj_player.x,Obj_player.y) <= 25)&&(Obj_player.state != "dead"){
	timer++;
	var y_move = sin(timer*0.1)*3;
	draw_sprite(Spr_weapoon_iconpu,0,x,y-35+y_move);	
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xscale,image_yscale*yscale,image_angle,image_blend,image_alpha);