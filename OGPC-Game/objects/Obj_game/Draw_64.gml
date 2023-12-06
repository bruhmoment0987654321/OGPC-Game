draw_set_font(F_Silver);
draw_set_color(c_red);
draw_text_transformed(50,50,"Health: "+ string(global.hp),scale,scale,0);
if(global.bomb_amount > 0){
	draw_set_color(c_grey);
	draw_text_transformed(50,70,"Bombs: " + string(global.bomb_amount),scale,scale,0);	
}
if(global.shield > 0){
	draw_set_color(c_blue);
	draw_text_transformed(50,20,"Shield: "+ string(global.shield),scale,scale,0);
}
if(global.money > 0){
	draw_set_color(c_green);
	draw_text_transformed(50,90,"Money: "+ string(global.money),scale,scale,0);	
}