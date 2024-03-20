///@param damage
///@param knockback
function Player_attacked(_damage,_knockback){
	with(Obj_player){
		if(!dont_die){
			if(!invincible){
				if(global.shield > 0) global.shield -= round(_damage);	else global.hp -= round(_damage);
				if state != "ladder" {state = "normal"}
				invincible = true;
				Screenshake(5,15);
				Gummy(0.9,1.3);
				invincible_timer = invincible_timer_amount;
			}
			hsp += _knockback;	
		}
	}
}