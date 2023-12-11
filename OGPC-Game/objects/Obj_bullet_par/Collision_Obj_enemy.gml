with(other){
	hp -= other.damage;
	flash = 2;
	if(point_in_circle(Obj_player.x,Obj_player.y,x,y,150)) state = "chase";
}
instance_destroy();	