///@param instakill
///@param damage_amount
///@param knockback_amount
///@param attacker
///@param enemy_stun
///@param [state]
function Enemy_damaged(_insta_kill,_damage_amount,_knockback,_attacker,_stunned){
		if(_insta_kill) _damage_amount = 999999999;
		switch(_attacker){
			case "Bullet":
				hp -= _damage_amount;
				flash = 2;
				if(!_insta_kill){
					if(_stunned) state = "stunned";
					else if(argument_count > 5) state = argument[5];
				}
				with(other) instance_destroy();
			break;
			case "Hitbox": 
				hp -= _damage_amount;
				flash = 2;
				if(!_insta_kill){
					if(_stunned) state = "stunned"; 
					else if(argument_count > 5) state = argument[5];
				}
				if(variable_instance_exists(self,"hsp")){
					hsp += _knockback;
				}
			break;
			case "Explosion":
				if !invincible{
					hp -= _damage_amount;
					if(other.active) flash = 2; other.active = false;
					if(!_insta_kill){
						if(_stunned) state = "stunned";
						else if(argument_count > 5) state = argument[5];
					}
					if(variable_instance_exists(self,"hsp")){
						hsp += _knockback;	
					}
					invincible = true;
					i_frame_time = i_frame_timer_max;
				}
				
			break;
		}
		
		
}