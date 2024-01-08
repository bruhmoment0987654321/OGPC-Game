///@param damage_amount
///@param knockback_amount
///@param attacker
///@param enemy_stun
///@param [state]
function Enemy_damaged(_damage_amount,_knockback,_attacker,_stunned){
		switch(_attacker){
			case "Bullet":
				other.hp -= _damage_amount;
				other.flash = 2;
				if(_stunned) other.state = "stunned";
				else if(argument_count > 4) other.state = argument[4];
				other.hsp += _knockback;	
				instance_destroy();
			break;
			case "Hitbox": 
				hp -= _damage_amount;
				flash = 2;
				if(_stunned) state = "stunned"; 
				else if(argument_count > 4) state = argument[4];
				hsp += _knockback;
				//no instance destroy because the hitbox already destroys itself
			break;
		}
		
		
}