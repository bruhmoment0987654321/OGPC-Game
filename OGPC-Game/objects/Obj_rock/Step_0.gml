switch(attacker){
	case "player":
		if(place_meeting(x,y,Obj_enemy_par)){
			Enemy_damaged(damage,"Bullet");
		}
	break;
	
	case "enemy":
		image_blend = c_ltgrey
		if(place_meeting(x,y,Obj_player)){
			Player_attacked(damage,knockback_amount);
			instance_destroy();
		}
	break;
}