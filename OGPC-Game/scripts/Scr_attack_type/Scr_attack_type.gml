// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Charging_attack(){
		charge += 1;
		if(charge >= charge_max){
			charged = true;
		}else{
			charged = false;
		}
}

function Hit_attack(){
	sprite_index = Spr_bonk_attack;
	image_index = 0;
	is_swinging = true;
	//hitbox
	alarm_set(0,2);	
}