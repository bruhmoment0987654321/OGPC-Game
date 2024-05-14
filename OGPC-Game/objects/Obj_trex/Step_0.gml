if global.game_state == GAME_STATE.PAUSED {
	return;	
}

switch state {
	case "norm":
		break_time--;
		
		if(point_direction(x,y,Obj_player.x,Obj_player.y-4) <= 90){
				dir = 1;
			}else{
				dir = -1;
			}
		#region changing state
			if break_time <= 0{
				if pre_state == "" {
					state = choose("roar");	
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
		#endregion
	break;
	
	case "charge":
		charge_timer--;
	
		if charge_timer <= 0 {
			#region the chasin' part
				sprite_index = Spr_trex_run;
				var max_hsp = 10;
				var dir;
				if(point_direction(x,y,Obj_player.x,Obj_player.y-4) <= 90){
					dir = 1;
				}else{
					dir = -1;
				}
				if(charging_timer >= 0){
					hsp += charge_sp * dir;
					hsp = clamp(hsp,-max_hsp,max_hsp);
				}else{
					charge_timer = charge_timer_max;	
					charging_timer = charging_timer_max;
					break_time = break_time_max;
					state = "norm";
				}
				charging_timer--;
			#endregion
		}else{
			sprite_index = Spr_trex_charge;	
		}
		
	break;
	
	case "roar":
		erupt_timer--;
		if erupt_timer <= 0 {
			scream_timer--;
			image_speed = 1;
			sprite_index = Spr_trex_roar;
			
			 Screenshake(random_range(3,5),30);
			 
			 if scream_timer <= 0 {
				erupt_timer = erupt_timer_max;
				break_time = break_time_max/2	 
				state = "norm";
			 }
		}else{
			image_speed = 0;	
		}
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

