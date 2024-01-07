event_inherited();
state = "stunned";
hp -= Obj_hitbox.damage;
hsp += Obj_hitbox.kb;
with(Obj_hitbox){
	instance_destroy();	
}
