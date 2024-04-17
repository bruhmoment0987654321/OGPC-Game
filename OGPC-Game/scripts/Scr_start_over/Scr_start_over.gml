function Start_over(){
	global.playercant = false;
	global.hp = 100;
	global.bomb_amount = 1;
	global.shield = 0;
	global.money = 0;
	global.take_the_weapon = true;
	global.pauseable = true;
	global.first_item_added_cost = 0;
	global.second_item_added_cost = 0;
	global.third_item_added_cost = 0;
	score = 0;
	Obj_game.current_pickup = noone;
	Obj_game.current_weapon = noone;
}