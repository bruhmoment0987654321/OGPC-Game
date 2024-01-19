left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
jump = keyboard_check_pressed(vk_space);
item_use = keyboard_check_pressed(ord("E"));
open_up = keyboard_check_pressed(ord("Q"));
ladder_up = keyboard_check_pressed(ord("W"));
restart = keyboard_check_pressed(ord("R"));
if(global.cantpress)||(global.cantpress_commands){
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
	case "normal":
#region movement functions
	var move = right-left;
	if(move != 0){
		hsp += move*walk_sp;
		hsp = clamp(hsp,-max_hsp,max_hsp);
	}else{
		if(abs(hsp) < 0.1){
			hsp = 0;	
		}
		hsp = lerp(hsp,0,friction_);
	}
	if(!on_ladder){
		vsp += global.grv;
	}
	vsp = clamp(vsp,-max_vsp,max_vsp);
#endregion

#region jump functions
	if(place_meeting(x,y+1,Obj_solid)){
		on_ground = true;
	}else{
		on_ground = false;	
	}
	
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

#region entering places
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
//shop door
if(up && place_meeting(x,y,Obj_shop_door)){
	room_goto(Rm_shop);
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
	break;
	
	case "ladder":	
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
		if(!place_meeting(x,y,Obj_ladder)){
			state = "normal";	
		}
		#region collisions 
		collision(true,true);
		#endregion
	break;
	case "dead":
		global.cantpress = true;
		hsp = 0;
		vsp = 0;
		if(!sound){
			audio_play_sound(Snd_Death_scream,10,false);
			sound = true;
		}
		image_alpha -= 0.03;
		instance_destroy(which_weapon);
		death_timer--;
		if(death_timer <= 0){
			var _x = camera_get_view_x(view_camera[0]);
			var _y = camera_get_view_y(view_camera[0]);
			layer_sequence_create("Game_over",_x,_y,Sq_game_over);
			
		}
	break;
}

#region fly timer
	if(hsp == 0){
		fly_timer--;	
	}else{
		fly_timer = fly_timer_max;	
	}
	if(fly_timer <= 0){
		Spawn_off_camera(Obj_fly);
		fly_timer = fly_timer_max/2;
	}
#endregion

#region animations
	if(hsp != 0) image_xscale = sign(hsp);
#endregion