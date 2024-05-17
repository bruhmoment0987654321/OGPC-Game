if global.game_state == GAME_STATE.PAUSED {
	return;	
}

switch state {
	#region norm
	case "norm":
		break_time--;
		sprite_index = Spr_trex;
		if hsp != 0 {
			hsp = lerp(hsp,0,friction_);
			break_time = break_time_max;
		}
		if(point_direction(x,y,Obj_player.x,Obj_player.y-4) <= 90){
				dir = 1;
			}else{
				dir = -1;
			}
		#region changing state
			if break_time <= 0{
				if pre_state == "" {
					state = choose("charge");	
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
				
						case "bite_attack":
							state = choose("charge","roar","tailwhip");	
						break;
					}
				}
			}
		#endregion
	break;
	#endregion
	#region charge
	case "charge":
		charge_timer--;
	
		if charge_timer <= 0 {
			#region the chasin' part
				sprite_index = Spr_trex_run;
				var dir;
				if(point_direction(x,y,Obj_player.x,Obj_player.y-4) <= 90){
					dir = 1;
				}else{
					dir = -1;
				}
				
				mach_effect.attack_mode = true;
				if(charging_timer >= 0){
					hsp += charge_sp * dir;
					hsp = clamp(hsp,-max_hsp,max_hsp);
				}else{
					charge_timer = charge_timer_max;	
					charging_timer = charging_timer_max;
					break_time = break_time_max;
					pre_state = state;
					mach_effect.attack_mode = false;
					state = "norm";
				}
				charging_timer--;
			#endregion
		}else{
			sprite_index = Spr_trex_charge;	
		}
		
	break;
	#endregion
	#region roar
	case "roar":
		erupt_timer--;
		if erupt_timer <= 0 {
			scream_timer--;
			image_speed = 1;
			sprite_index = Spr_trex_roar;
			if create_shock {
				instance_create_layer(x,y,"Other",Obj_trex_shockwave);
				image_index = 0;
				create_shock = false;
			}
			
			if scream_timer <= 0 {
				create_shock = true;
				erupt_timer = erupt_timer_max;
				scream_timer = scream_timer_max;
				break_time = break_time_max;
				pre_state = state;
				state = "norm";
			}
			 
			Screenshake(random_range(3,4),30);
		}else{
			image_speed = 0;	
		}
	break;
	#endregion
	#region tailwhip
	case "tailwhip":
	
	break;
	#endregion
	#region bite
	case "bite":
		chase_timer--;
		sprite_index = Spr_trex_run;
			var dir;
			if(point_direction(x,y,Obj_player.x,Obj_player.y-4) <= 90){
				dir = 1;
			}else{
				dir = -1;
			}
			hsp += charge_sp * dir;
			hsp = clamp(hsp,-max_hsp,max_hsp);
		if chase_timer > 0 {
			if(point_in_circle(Obj_player.x,Obj_player.y-16,x+45,y-48,attack_radius)){
				activation = true;
				state = "bite_attack";
			}
		}else{
			pre_state = state;
			state = "norm";
			chase_timer = chase_timer_max;
		}
		
	break;
	case "bite_attack":
		hsp = 0;
		chase_timer = chase_timer_max;
		sprite_index = Spr_trex_bite;
		
		if(activation){
			image_index = 0;
			activation = false;
		}	
				
		if(image_index >= 2){
			hsp += ((attack_distance - hsp) * tween_speed) * image_xscale;
			if(point_in_circle(Obj_player.x,Obj_player.y-16,x+50*image_xscale,y-48,hit_radius)){
				Player_attacked(bite_damage,0);
			}
		}
		
		if(image_index >= image_number-1){
			pre_state = state;
			state = "norm";
			chase_timer = chase_timer_max;
			activation = true;
		}
	break;
	#endregion
	#region dead
	case "dead":
		instance_destroy();
	break;
	#endregion
}

if hp <= 0 {
	state = "dead";	
}

//mach effect hanging on to boss
mach_effect.x = x;
mach_effect.image_xscale = image_xscale;



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

