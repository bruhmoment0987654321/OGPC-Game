var near_flytrap = instance_nearest(x,y,Obj_flytrap);

if instance_exists(near_flytrap) {
	follow = near_flytrap;
}else{
	follow = Obj_player;	
}

//chasing the player
hsp += sign(follow.x-x)*spd;
vsp += sign(follow.y-y)*spd;
if limit_speed {
	hsp = clamp(hsp,-max_sp,max_sp);
	vsp = clamp(vsp,-max_sp,max_sp);
}

x += hsp;
y += vsp;