state = "stunned";
hp -= Obj_hitbox.damage;

hsp += Obj_hitbox.kb;
flash = 2;
with(Obj_hitbox){
	instance_destroy();	
}