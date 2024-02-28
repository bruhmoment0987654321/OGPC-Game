go_through = keyboard_check_pressed(global.up);

if instance_exists(Obj_player){
	if place_meeting(x,y,Obj_player) && go_through {
		room_goto(Rm_prehistoric);
	}
}


