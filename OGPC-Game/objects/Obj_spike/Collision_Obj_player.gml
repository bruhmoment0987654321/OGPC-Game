var inst_near = instance_nearest(Obj_player.x, Obj_player.y,Obj_spike);

if Obj_player.y > inst_near.y && Obj_player.vsp > 0 {
	Player_attacked(damage,0);
}
