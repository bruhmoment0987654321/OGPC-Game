if global.game_state == GAME_STATE.PAUSED {
	return;	
}

open = keyboard_check_pressed(global.action);

s = id;

if place_meeting(x,y,Obj_player) && open && !triggered{
	triggered = true;
	with(instance_create_depth(x,y,-999,Obj_textbox)){
		height = 80;
		y_offset = 220;
		GameText(other.s.text_start_id);
	}
	with Obj_player {
		hsp = 0;
	}
	
}

if !place_meeting(x,y,Obj_player){
	triggered = false;	
}