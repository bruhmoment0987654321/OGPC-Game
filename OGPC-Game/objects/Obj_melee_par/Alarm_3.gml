/// @description down attack first hitbox
var offset_x = 30*front;
var offset_y = 5;
with(instance_create_depth(x+offset_x,y+offset_y,-9999,Obj_hitbox)){
	image_yscale = 0.5;
	image_xscale = 0.9;
	damage = Obj_melee_par.dmg*Obj_melee_par.attack_multiplier;
	kb = Obj_melee_par.front*Obj_melee_par.knockback;
}