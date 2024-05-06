//checking if you are holding a weapon during gameplay
fullscreen_button = keyboard_check_pressed(vk_f11);

if fullscreen_button {
	window_set_fullscreen(!window_get_fullscreen());	
}
//checking weapon in multiple rooms
if instance_exists(Obj_player) {
	if(Obj_player.which_weapon != noone){
		current_weapon = Obj_player.which_weapon;
	}
	
	if(Obj_player.which_weapon_pickup != noone){
		current_pickup = Obj_player.which_weapon_pickup;	
	}
}

if global.midTransition {
	global.playercant = true;	
}

//increaing difficulty in levels
if global.battery_amount == global.round_difficulty_increase {
	global.round_counter += 1;
	global.battery_amount = 0;	
}

//max resources in gameplay
if global.bomb_amount < global.bomb_max {
	global.max_bombs = false;
}
if global.shield < global.shield_max {
	global.max_shield = false;
}
if global.hp < global.max_hp {
	global.max_health = false;	
}

//only for premade levels, could remove soon
if room == Rm_level1 {
	if !instance_exists(Obj_enemy_par) {
		level_completed = true;
		if(create_end_level){
			instance_create_depth(735,139,-999999,Obj_battery);
			create_end_level = false;
		}
	}
}

if room == Rm_level2 {
	if !instance_exists(Obj_enemy_par) {
		level_completed = true;
		if(create_end_level){
			instance_create_depth(1216,705,-999999,Obj_battery);
			create_end_level = false;
		}
	}
}	

#region health and bombs
if instance_exists(Obj_player) {
	if(global.hp <= 0){
		Obj_player.state = "dead";	
	}
}
#endregion