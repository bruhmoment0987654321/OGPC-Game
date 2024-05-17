global.midTransition = false;
global.roomTarget = -1;
global.sequenceLayer = -1;

function Transition_Place(_type){
	if instance_exists(Obj_cam) {
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_y = camera_get_view_y(view_camera[0]);
	}else{
		var _cam_x = 0;
		var _cam_y = 0;
	}
	
	if layer_exists("transition") layer_destroy("transition");
	var _lay = layer_create(-9999999999999,"transition");
	global.sequenceLayer = layer_sequence_create(_lay,_cam_x,_cam_y,_type);
}

function Transition_Start(_roomTarget,_typeOut,_typeIn){
	if !global.midTransition {
		global.show_GUI = false;
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		global.game_state = GAME_STATE.PAUSED;
		
		Transition_Place(_typeOut);
		layer_set_target_room(_roomTarget);
		Transition_Place(_typeIn);
		layer_reset_target_room();
		
		return true
	}else return false
}
function Transition_Change_Room(){
	room_goto(global.roomTarget);
	global.game_state = GAME_STATE.RUNNING;
}

function Transition_Finished(){
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	global.playercant = false;
	global.starting_over = false;
}