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
	Obj_game.current_pickup = noone;
	Obj_game.current_weapon = noone;
}