if(room == Rm_level1){
	if(!instance_exists(Obj_enemy)){
		level_completed = true;
	}
}
if(level_completed == true){
	with(Obj_shop_sign){
		image_alpha = 1;	
	}
}
#region health and bombs
if(global.hp > max_hp){
	global.hp = max_hp;	
}
if(global.shield > shield_max){
	global.shield = shield_max;	
}
if(global.hp <= 0){
	game_restart();	
}
if(global.bomb_amount > bomb_max){
	global.bomb_amount = bomb_max;
}
#endregion