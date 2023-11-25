with(other){
	hp -= other.damage;
	flash = 2;
	state = "chase";
}
instance_destroy();	