if global.game_state != GAME_STATE.PAUSED {
	timer++;
}
if instance_exists(Obj_player) {
	if(point_distance(x,y,Obj_player.x,Obj_player.y) <= 50)&&(Obj_player.state != "dead"){
		var y_move = sin(timer*0.1)*3;
		draw_sprite(Spr_weapoon_iconpu,0,x,(y-30)+y_move);	
	}
}
draw_self();