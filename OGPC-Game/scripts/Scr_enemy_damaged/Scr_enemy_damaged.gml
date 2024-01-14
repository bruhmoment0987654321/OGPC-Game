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
				other.hp -= _damage_amount;
				other.flash = 2;
				if(!_insta_kill){
					if(_stunned) other.state = "stunned";
					else if(argument_count > 5) other.state = argument[5];
				}
				other.hsp += _knockback;	
				instance_destroy();
			break;
			case "Hitbox": 
				hp -= _damage_amount;
				flash = 2;
				if(!_insta_kill){
					if(_stunned) state = "stunned"; 
					else if(argument_count > 5) state = argument[5];
				}
				hsp += _knockback;
				//no instance destroy because the hitbox already destroys itself
			break;
			case "Explosion":
				other.hp -= _damage_amount;
				if(active) other.flash = 2; active = false;
				if(!_insta_kill){
					if(_stunned) other.state = "stunned";
					else if(argument_count > 5) other.state = argument[5];
				}
				other.hsp += _knockback;	
			break;
		}
		
		
}