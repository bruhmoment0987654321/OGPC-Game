///@param damage
function Attacked(_damage){
	if(!invincible)&&(other.state != "stunned"){
		if(global.shield > 0){
			global.shield -= _damage;	
		}else{
			global.hp -= _damage;
		}
		invincible = true;
		alarm[0] = 60;
	}
}