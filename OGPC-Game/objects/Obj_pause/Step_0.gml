if keyboard_check_pressed(global.pause_button) && global.pauseable && global.midTransition{
	if global.game_state == GAME_STATE.RUNNING {
		global.game_state = GAME_STATE.PAUSED;
		if layer_exists("Shop_obj"){
			instance_create_layer(0,0,"Shop_obj",Obj_pause_menu);
		}
		
	}else if global.game_state == GAME_STATE.PAUSED {
		global.game_state = GAME_STATE.RUNNING;
		if(instance_exists(Obj_pause_menu)){
			with(Obj_pause_menu){
				instance_destroy();	
			}
		}
	}
}