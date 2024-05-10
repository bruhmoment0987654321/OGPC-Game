if global.game_state == GAME_STATE.PAUSED {
	return;	
}

switch state {
	case "norm":
		break_time--;
		if break_time <= 0{
			if pre_state == "" {
				state = choose("charge","roar","tailwhip","bite");	
				pre_state = state;
			}else{
				switch(pre_state){
				
					case "charge":
						state = choose("roar","tailwhip","bite");
					break;
				
					case "roar":
						state = choose("charge","tailwhip","bite");	
					break;
				
					case "tailwhip":
						state = choose("charge","roar","bite");	
					break;
				
					case "bite":
						state = choose("charge","roar","tailwhip");	
					break;
				}
			}
		}
	break;
	
	case "charge":
	
	break;
	
	case "roar":
	
	break;
	
	case "tailwhip":
	
	break;
	
	case "bite":
	
	break;
	
	case "dead":
		instance_destroy();
	break;
}

if hp <= 0 {
	state = "dead";	
}


#region invincibility
	i_frame_time--;
	if i_frame_time < 0 && invincible{
		invincible = false;
		i_frame_time = i_frame_timer_max;
	}
#endregion

#region animations
	//gummy
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
	if(variable_instance_exists(self,"hsp")){
		if(hsp != 0) image_xscale = sign(hsp);
	}
	flash--;
#endregion

collision(true,true);

