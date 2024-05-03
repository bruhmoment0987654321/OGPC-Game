// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Boss_Attacked(_damage,_attacker,_instakill = false){
	switch(_attacker){
		case "Bullet":
			if !_instakill hp -= _damage;
			else hp -= 99999999999;
			flash = 2;
			with other instance_destroy();
		break;
		
		case "Hitbox":
			if !_instakill hp -= _damage;
			else hp -= 99999999999;
			flash = 2;
		break;
		
		case "Explosion":
			if !invincible {
				if !_instakill hp -= _damage;
				else hp -= 99999999999;
				if(other.active) flash = 2; other.active = false;
				invincible = true;
				i_frame_time = i_frame_timer_max;	
			}
		break;
	}
}