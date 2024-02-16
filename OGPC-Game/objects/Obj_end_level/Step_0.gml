up = keyboard_check_pressed(global.up);
if place_meeting(x,y,Obj_player) && global.holding_battery && up {
	room_restart();
	global.battery_amount += 1;
}


