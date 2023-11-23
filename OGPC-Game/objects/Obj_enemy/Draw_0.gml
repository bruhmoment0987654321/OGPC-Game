draw_self();
if(flash>0){
	shader_set(Sh_White);
	draw_self();
	shader_reset();
}
if(global.debug){
	draw_text(x,y-26,hp);
	if(state == "chase"){
		draw_set_color(c_red);
		draw_set_alpha(0.2);
		draw_circle(x,y,150,false);
	}
}
