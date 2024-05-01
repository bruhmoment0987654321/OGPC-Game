if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
	return;	
}else if global.game_state == GAME_STATE.RUNNING {
	image_speed = 1;	
}

switch(state){
	case "norm":
		if(place_meeting(x+hsp,y,Obj_solid)){
			hsp = -hsp;	
		}
		if(grounded)&&(!place_meeting(x+sprite_width/2,y+1,Obj_solid)){
			hsp = -hsp;
		}
		sprite_index = Spr_velociraptor;
		if(instance_exists(Obj_player)){
			if(sign(Obj_player.x - x) == image_xscale)
			&&(global.hp > 0)
			&&((abs(Obj_player.y - y) < 16))
			&&(abs(Obj_player.x-x) <= dist)
			&&(collision_line(x,y-16,Obj_player.x,Obj_player.y-16,Obj_solid,false,false) == noone) state = "chase";
		}
		sprite_index = Spr_velociraptor;
	break;
	
	case "chase":
		if(first_time){
			knockout_timer = 0;	
		}
		knockout_timer--;
		if(knockout_timer > 0){
			hsp = 0;
		}else{
			image_speed = 1.3;
			if x<Obj_player.x-10 {
				hsp = run_sp;	
			}else if x>Obj_player.x+10 {
				hsp = -run_sp;
			}else{
				hsp = lerp(hsp,0,friction_);
			}
			if(!jumped){
				if(place_meeting(x+hsp,y,Obj_solid)){
					vsp -= jump_sp;
					jumped = true;
				}
			}
		
			if abs(Obj_player.x-x) <= attack_dist && abs(Obj_player.y - y) < 16 && knockout_timer <= 0 {
				state = "entrap"	
			}
		}
		sprite_index = Spr_velociraptor;
	break;
	
	case "entrap":
		if !jumped {
			hsp += jumpdist*image_xscale;
			vsp -= jumpheight;
			jumped = true;
		}
		if place_meeting(x,y,Obj_player) state = "attack";
		else if jumped{
			jump_timer--;
			if jump_timer <= 0 {
				state = "chase";
				jump_timer = jump_timer_max;
			}
		}
		sprite_index = Spr_velociraptor;
	break;
	
	case "attack":
		hsp = 0;
		vsp = 0;
		x = Obj_player.x;
		y = Obj_player.y-16;
		with(Obj_player){
			state = "pinned";
		}
		Player_attacked(damage,0);
		sprite_index = Spr_velociraptor;
	break;
	
	case "stunned":
		stun_timer--;
		if(stun_timer <=0){
			first_time = false;
			knockout_timer = knockout_timer_max; 
			stun_timer = stun_amount;
			state = "chase";
		}else{
			sprite_index = Spr_velociraptor_stun;	
		}
		with(Obj_player){
			state = "normal";
		}
	break
	
	case "dead":
		with(Obj_player){
			state = "normal";
		}
		instance_destroy();
	break;
}

if(place_meeting(x,y+1,Obj_solid)){
	jumped = false;	
}else{
	jumped = true;	
}
#region checking if grounded	
	if(place_meeting(x,y+1,Obj_solid)){
		grounded = true;	
	}else{
		grounded = false;	
	}
#endregion
if(hp <= 0){
	state = "dead";	
}
vsp += global.grv;
//collisions
collision(true,true);

// Inherit the parent event
event_inherited();

