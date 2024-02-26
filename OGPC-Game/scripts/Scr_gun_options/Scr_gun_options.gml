function Gun_options(_excluded_weapon){
	var gun_options = ds_list_create();
	//adding the gun pickups to the list
	ds_list_add(gun_options,Obj_armgun_pickup);
	ds_list_add(gun_options,Obj_cannon_pickup);
	ds_list_add(gun_options,Obj_threegun_pickup);
	ds_list_add(gun_options,Obj_grenade_pickup);
	
	//randomize the guns to pick out
	ds_list_shuffle(gun_options);
	
	//option is picked
	var picked_option = gun_options[| 0];
	
	//the script returns the option picked, which is an object...
	return picked_option
	
	//always destroy the ds_list. For memory purposes.
	ds_list_destroy(gun_options);
}