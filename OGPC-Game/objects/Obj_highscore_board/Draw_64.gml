if !instance_exists(Obj_name_input){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text_transformed(540,140,"Hi-Score",scale,scale,0);
	draw_highscore(500,170,620,320);	
	draw_set_halign(fa_left);
}