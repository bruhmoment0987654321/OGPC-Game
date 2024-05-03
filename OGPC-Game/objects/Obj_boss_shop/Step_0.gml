if global.game_state == GAME_STATE.PAUSED {
	return;	
}

open = keyboard_check_pressed(global.action);

s = id;

if place_meeting(x,y,Obj_player) && open && !triggered{
	with(instance_create_depth(x,y,-999,Obj_textbox)){
		height = 80;
		y_offset = 220;
		GameText(other.s.text_start_id);
		if destroyed && !instance_exists(Obj_boss_shop_menu){
			show_debug_message("OPEN THE MENU!");
		}
	}
	
}

if !place_meeting(x,y,Obj_player){
	triggered = false;	
}