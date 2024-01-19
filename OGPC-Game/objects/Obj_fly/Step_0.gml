//chasing the player
hsp += sign(Obj_player.x-x)*spd;
vsp += sign(Obj_player.y-y)*spd;
if(limit_speed){
	hsp = clamp(hsp,-max_sp,max_sp);
	vsp = clamp(vsp,-max_sp,max_sp);
}
x += hsp;
y += vsp;