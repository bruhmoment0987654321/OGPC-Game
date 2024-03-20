if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
}else{
	image_speed = 1;	
}
draw_self();
if(global.show_hitboxes){
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
}