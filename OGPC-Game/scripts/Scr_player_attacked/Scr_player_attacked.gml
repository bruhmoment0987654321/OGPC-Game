///@param damage
///@param knockback
function Player_attacked(_damage,_knockback){
	if(!Obj_player.invincible)&&(other.state != "stunned"){
		if(global.shield > 0) global.shield -= _damage;	else global.hp -= _damage;
		
		Obj_player.invincible = true;
		alarm[0] = 60;
	}
	Obj_player.hsp += _knockback;	
}