event_inherited();
if(global.debug){
	draw_text(x,y-26,hp);
	if(state == "chase"){
		draw_set_color(c_red);
		draw_set_alpha(0.5);
		draw_circle(x,y,150,false);
	}
}
