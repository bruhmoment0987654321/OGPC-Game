if(!invincible){
	if(global.shield > 0){
		global.shield -= 15;	
	}else{
		global.hp -= 15;
	}
	invincible = true;
	alarm[0] = 60;
}
