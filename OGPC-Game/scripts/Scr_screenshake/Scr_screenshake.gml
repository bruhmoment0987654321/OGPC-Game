///@param magnitude
///@param frames
function Screenshake(_magnitude,_frames){
	if(global.hp > 0){
		if(argument_count < 1){
			_magnitude = 6;
			_frames = 60;	
		}
		with(Obj_cam){
			if(argument[0] > shake_remain){
				shake_magnitude = _magnitude;
				shake_remain = _magnitude;
				shake_length = _frames;
				shake_angle = _magnitude/1.3;
			}
		}
	}
}