if global.game_state == GAME_STATE.PAUSED {
	return;	
}

if instance_exists(follow) {
	//chasing the player
	hsp += sign(follow.x-x)*spd;
	vsp += sign(follow.y-y)*spd;
	if limit_speed {
		hsp = clamp(hsp,-max_sp,max_sp);
		vsp = clamp(vsp,-max_sp,max_sp);
	}
}else{
	if instance_exists(Obj_flytrap) {
		follow = Obj_flytrap;	
	}else{
		hsp = random_range(-1,1);
		vsp = random_range(-1,1);
	}
}



x += hsp;
y += vsp;
