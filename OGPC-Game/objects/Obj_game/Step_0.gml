

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

var _x = window_get_x(), _y = window_get_y();
var _w = window_get_x() + window_get_width(), _h = _y + room_height * window_get_height();

if !In_between(display_mouse_get_x(),_x,_w) || !In_between(display_mouse_get_y(),_y,_h){
  
	window_set_cursor(cr_default);
} else {
	 window_set_cursor(cr_none);
	
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

//room specific functions
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

if room == Rm_logoboot {
	if sequence_exists(Sq_logo_boot){
		if keyboard_check_pressed(global.select){
			Sq_logo_boot_Moment();	
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

mx = mouse_x;
my = mouse_y;
