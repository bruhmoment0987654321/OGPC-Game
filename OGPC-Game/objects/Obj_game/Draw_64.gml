if(instance_exists(Obj_player)){
	draw_set_color(c_red);
	draw_text(50,50,"Health: "+ string(Obj_player.hp));
	if(Obj_player.bomb_amount > 0){
		draw_set_color(c_black);
		draw_text(50,70,"Bombs: " + string(Obj_player.bomb_amount));	
	}
	if(Obj_player.shield > 0){
		draw_set_color(c_blue);
		draw_text(50,30,"Shield: "+ string(Obj_player.shield));
	}
}
if(money > 0){
	draw_set_color(c_green);
	draw_text(50,10,"Money: "+ string(money));	
}