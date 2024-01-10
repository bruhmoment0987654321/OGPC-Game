var interval = 12;
if((alarm[0] % interval)<= interval/2){
	draw_self();
}else{
	shader_set(Sh_White);
	draw_self();
	shader_reset();
}
if(global.show_hitboxes){
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);	
}