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
	
	//always destroy the ds_list. For memory purposes.
	ds_list_destroy(_gun_options);
	
	//the script returns the option picked, which is an object...
	return picked_option;
}

function ChooseAnItem(_excluded_item = noone){
	var _map = ds_map_create();
	//add vars to ds_map
	ds_map_add(_map,"Shield",Obj_game.shield_item);
	ds_map_add(_map,"Health",Obj_game.health_item);
	ds_map_add(_map,"Bomb",Obj_game.bomb_item);
	ds_map_add(_map,"Arm Gun",Obj_game.arm_gun_item);
	ds_map_add(_map,"Cannon",Obj_game.cannon_item);
	ds_map_add(_map,"Guitar Gun",Obj_game.guitar_gun_item);
	ds_map_add(_map,"Three Gun", Obj_game.three_gun_item);
	ds_map_add(_map,"Shuriken",Obj_game.shuriken_item);
	ds_map_add(_map,"Grenade Launcher", Obj_game.grenade_launcher_item);
	
	//exclude one thing from the item map
	if _excluded_item != noone {
		ds_map_delete(_map,_excluded_item);
	}
	
	//randomize the map
	random_index = irandom_range(0, ds_map_size(_map)-1)
	
	//pick the option on top
	var picked_option = _map[? random_index];
	
	//destroy the list 
	ds_map_destroy(_map);
	
	//return the option picked
	return picked_option;
}