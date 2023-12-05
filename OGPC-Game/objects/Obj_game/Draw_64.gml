draw_set_color(c_red);
draw_text(50,50,"Health: "+ string(global.hp));
if(global.bomb_amount > 0){
	draw_set_color(c_black);
	draw_text(50,70,"Bombs: " + string(global.bomb_amount));	
}
if(global.shield > 0){
	draw_set_color(c_blue);
	draw_text(50,30,"Shield: "+ string(global.shield));
}
if(money > 0){
	draw_set_color(c_green);
	draw_text(50,10,"Money: "+ string(money));	
}