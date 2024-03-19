if global.game_state == GAME_STATE.PAUSED {
	return;	
}

switch(check_object){
	case Obj_player:
		with(Obj_player){
			if(state != "dead"){
				state = "stuck";
				y = other.y+other.image_yscale;
			}
		}
	break;
}