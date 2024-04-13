function Gun_options(_excluded_weapon = noone){
	var _gun_options = ds_list_create();
	//adding the gun pickups to the list
	ds_list_add(_gun_options,Obj_armgun_pickup);
	ds_list_add(_gun_options,Obj_cannon_pickup);
	ds_list_add(_gun_options,Obj_threegun_pickup);
	ds_list_add(_gun_options,Obj_grenade_pickup);
	ds_list_add(_gun_options,Obj_shuriken_pickup);
	ds_list_add(_gun_options,Obj_guitargun_pickup);
	
	//exclude the object provided in the function
	if _excluded_weapon != noone {
		var _excluded_gun = ds_list_find_index(_gun_options,_excluded_weapon);
		ds_list_delete(_gun_options,_excluded_gun);
	}
	
	//randomize the guns to pick out
	ds_list_shuffle(_gun_options);
	
	//option is picked
	var picked_option = _gun_options[| 0];
	
	//the script returns the option picked, which is an object...
	return picked_option
	
	//always destroy the ds_list. For memory purposes.
	ds_list_destroy(_gun_options);
}