// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
	if score > Obj_game.highscore {
		Obj_game.highscore = score;
		Save_Game();
	}
	score = 0;
	Obj_game.current_pickup = noone;
	Obj_game.current_weapon = noone;
}