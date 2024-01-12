///@param damage
///@param knockback
function Player_attacked(_damage,_knockback){
	with(Obj_player){
		if(!dont_die){
			if(!invincible){
				if(global.shield > 0) global.shield -= _damage;	else global.hp -= _damage;
				state = "normal";
				invincible = true;
				alarm[0] = 60;
			}
			hsp += _knockback;	
		}
	}
}