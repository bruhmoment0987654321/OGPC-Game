draw_self();
if(global.show_timer){
	draw_set_color(c_gray);
	draw_text(x,y-40,"Shoot: " + string(countdown));
}
