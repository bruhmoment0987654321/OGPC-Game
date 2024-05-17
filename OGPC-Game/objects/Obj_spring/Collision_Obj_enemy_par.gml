var _inst = instance_nearest(other.x,other.y,Obj_spring);
if other.vsp > 0 && other.y > _inst.y {
	other.vsp -= other.jump_spring_sp;
	other.jumped = true;
	image_speed = 1;
}

