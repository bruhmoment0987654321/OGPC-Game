if(instance_exists(Obj_player)){
	draw_set_color(c_white);
	draw_text(50,50,"Health: "+ string(Obj_player.hp));
	if(Obj_player.bomb_amount > 0){
		draw_text(50,70,"Bombs: " + string(Obj_player.bomb_amount));	
	}
}