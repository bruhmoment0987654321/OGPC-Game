if(!triggered)&&(point_distance(x,y,Obj_player.x,Obj_player.y) <= 25)&&(Obj_player.state != "dead"){
	timer++;
	var y_move = sin(timer*0.1)*3;
	draw_sprite(Spr_weapoon_iconpu,0,x,y-48+y_move);	
}
draw_self();