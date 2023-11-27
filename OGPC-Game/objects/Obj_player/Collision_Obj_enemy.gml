if(!invincible){
	if(shield > 0){
		shield -= 15;	
	}else{
		hp -= 15;
	}
	invincible = true;
	alarm[0] = 60;
}
