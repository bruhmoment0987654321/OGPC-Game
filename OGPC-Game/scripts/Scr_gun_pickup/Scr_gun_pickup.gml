///@param gun_pickup
///@param the_gun
///@desc only used for Obj_weapon_pickup_par
function Gun_pickup(_pickup,_gun){
	if(object_index == _pickup){
		if(Obj_player.which_weapon != noone){
			with(Obj_player.which_weapon){
				instance_destroy();	
			}
		}else{
		
		}
		Obj_player.which_weapon_pickup = _pickup;
		Obj_player.which_weapon = _gun;
		instance_create_layer(x,y-13,"Guns",_gun);
	}
}