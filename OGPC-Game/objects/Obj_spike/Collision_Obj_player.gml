var inst_near = instance_nearest(Obj_player.x, Obj_player.y,Obj_spike);

if other.y > inst_near.y && other.vsp > 0 {
	Player_attacked(damage,0);
}
