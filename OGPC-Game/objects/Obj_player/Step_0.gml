left = keyboard_check(global.left);
right = keyboard_check(global.right);
up = keyboard_check(global.up);
down = keyboard_check(global.down);
jump = keyboard_check_pressed(global.jump);
jump_held = keyboard_check(global.jump);
item_use = keyboard_check_pressed(global.bomb_place);
open_up = keyboard_check_pressed(global.action);
ladder_up = keyboard_check_pressed(global.up);
restart = keyboard_check_pressed(ord("R"));
if(global.cantpress)||(global.cantpress_commands)||(global.playercant){
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	jump = 0;
	item_use = 0;
	open_up = 0;
	restart = 0;
}
if(restart){
	game_restart();
}

switch(state){
	#region normal state
	case "normal":
		#region movement functions
			
			var move = right-left;
			var decrease_sp = 1;
			if place_meeting(x,y,Obj_kingfly) decrease_sp = decrease_amount;
			if(move != 0){
				if place_meeting(x,y+1,Obj_solid){
					step_sound_timer --
					if not audio_is_playing(Step_sound){
						audio_play_sound(Step_sound,5,false)
						prev_step_sound = Step_sound
					}
					if step_sound_timer <= 0{
						Step_sound = choose(FOOTSTEPS.STEP1,FOOTSTEPS.STEP2,FOOTSTEPS.STEP3,FOOTSTEPS.STEP4,FOOTSTEPS.STEP5)
						step_sound_timer = step_sound_timer_max
					} 
					
				}
				hsp += move*walk_sp*decrease_sp;
				hsp = clamp(hsp,-max_hsp,max_hsp);
			}else{
				if(abs(hsp) < 0.1){
					hsp = 0;	
				}
				hsp = lerp(hsp,0,friction_);
				audio_stop_sound(Step_sound)
				Step_sound = choose(FOOTSTEPS.STEP1,FOOTSTEPS.STEP2,FOOTSTEPS.STEP3,FOOTSTEPS.STEP4,FOOTSTEPS.STEP5)
				step_sound_timer = step_sound_timer_max
			}
			if(!on_ladder){
				if(vsp > 0){
					fall_sp = fall_muliplied;
					
				}
				vsp += global.grv*fall_sp;
			}
			vsp = clamp(vsp,-max_vsp,max_vsp);
		#endregion

		#region jump functions
			if(place_meeting(x,y+1,Obj_solid)){
				on_ground = true;
			}else{
				on_ground = false;
				if(vsp < 0){
					Gummy(0.8,1.2);
				}else{
					Gummy(1.25,0.9);	
				}
			}
			with(Obj_spring){
				if(place_meeting(x,y,other.id)){
					if(other.vsp > 0){
						image_speed = 1;
						var jump_velocity_multiplied = 2;
						if(other.jump_held) jump_velocity_multiplied = 5;
						other.vsp -= other.jump_sp*jump_velocity_multiplied;
						other.jumped = true;
					}	
				}	
			}
		
			if place_meeting(x,y +1, Obj_ice) friction_ = ice_friction else friction_ = normal_friction;
		
			if(!on_ground){
				if(coyote_timer > 0){
					coyote_timer--;
					if(!jumped){
						if(jump){
							vsp -= jump_sp;	
							jumped = true;
						}
					}
				}
			}else{
				jumped = false;
				coyote_timer = coyote_time_amount;
				
			}
	
			if(jump){
				buffer_timer = buffer_time_amount;	
			}
	
			if(buffer_timer > 0){
				buffer_timer--;
		
				if(on_ground){
					vsp -= jump_sp;
					buffer_timer = 0;
					jumped = true;
				}
			}
		#endregion 

		#region entering ladder
		//ladder
		if(place_meeting(x,y,Obj_ladder)) && (ladder_up){
			on_ladder = true;
			inst = instance_place(x,y,Obj_ladder);
		}else{
			on_ladder = false	
		}

		if(on_ladder){
			state = "ladder";	
		}
		#endregion

		#region item usage
		if(item_use)&&(global.bomb_amount > 0){
			instance_create_layer(x,y-16,"Bullets",Obj_bomb);
			global.bomb_amount -= 1;	
		}
		if(open_up)&&(place_meeting(x,y,Obj_chest)){
			with(Obj_chest){
				open = true;	
			}
		}
		#endregion
		
		#region collisions
			collision(true,true);
		#endregion
		
		//sprite 
		sprite_index = Spr_player;
	break;
	#endregion
	
	#region ladder state
	case "ladder":
		#region ladder movement
		x = inst.x+16
		on_ground = false;
		
		var move1 = down-up;
		if(move1!=0){
			vsp += move1*laddersp;
			vsp = clamp(vsp,-(max_vsp*0.75),(max_vsp*0.75));
		}else{
			vsp = 0;	
		}
		if(jump){
			vsp -= jump_sp;	
			jumped = true;
			state = "normal";	
		}
		#endregion
		if(!place_meeting(x,y,Obj_ladder)){
			state = "normal";	
		}
	
		#region collisions 
		collision(true,true);
		#endregion
	break;
	#endregion
	
	#region dead state
	case "dead":
		//make the player not move
		global.cantpress = true;
		hsp = 0;
		vsp = 0;
		
		//deaht sound
		if(!sound){
			audio_play_sound(Snd_Death_scream,10,false);
			sound = true;
		}
		//character fades out
		image_alpha -= 0.03;
		
		//destroy weaopn
		instance_destroy(which_weapon);
		
		death_timer--;
		//showing death screen
		if(death_timer <= 0){
			var _x = camera_get_view_x(view_camera[0]);
			var _y = camera_get_view_y(view_camera[0]);
			layer_sequence_create("Game_over",_x,_y,Sq_game_over);
			
		}
	break;
	#endregion
	
	#region stuck state
		case "stuck":
			hsp = 0;
			vsp = 0;
		break;
	#endregion
	
	#region pinned down state
		case "pinned":
			hsp = 0;
			if(vsp > 0){
					fall_sp = fall_muliplied;
					
			}
			vsp += global.grv*fall_sp;
			vsp = clamp(vsp,-max_vsp,max_vsp);
			//collision
			collision(true,true);
			sprite_index = Spr_player_pinned;
		break;
	#endregion
}

#region animations
	//gummmy animation
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
	
	if(hsp != 0) image_xscale = sign(hsp);
#endregion