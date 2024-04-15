event_inherited();
if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
	return;	
}else if global.game_state == GAME_STATE.RUNNING image_speed = 1;
switch(state){
	case "norm":
		if(place_meeting(x+hsp,y,Obj_solid)){
			hsp = -hsp;	
		}
		if(grounded)&&(!place_meeting(x+sprite_width/2,y+1,Obj_solid))&&(global.hp > 0){
			hsp = -hsp;
		}
		sprite_index = Spr_chieftan;
	break;
	
	case "chase":
		if(instance_exists(Obj_player)){
			if(x<Obj_player.x-10){
				hsp = run_sp;	
			}else if (x>Obj_player.x+10){
				hsp = -run_sp;
			}else{
				hsp = lerp(hsp,0,friction_);	
			}
		}
		if(place_meeting(x,y+1,Obj_solid)){
			jumped = false;	
		}else{
			jumped = true;	
		}
		if(!jumped){
			if(place_meeting(x+hsp,y,Obj_solid)){
				vsp -= jump_sp;
				jumped = true;
			
			}
		}
		if(point_in_circle(Obj_player.x,Obj_player.y-16,x,y-attack_circ_y_offset,attack_radius)){
			activation = true;
			state = "attack";
		}
		sprite_index = Spr_chieftan_chase;
	break
	
	case "attack":
		sprite_index = Spr_chieftan_attack;
		hsp = 0;	
		if(activation){
			image_index = 0;
			activation = false;
		}
		if image_index >= 4 {
			if(point_in_circle(Obj_player.x,Obj_player.y-16,x+hit_circ_x_offset*image_xscale,y-hit_circ_y_offset,hit_radius)){
				Player_attacked(Damage,Obj_chieftan.knockb*Obj_chieftan.image_xscale);
			}
		}
		if(image_index >= 4) && (point_in_circle(Obj_player.x,Obj_player.y-16,x,y-attack_circ_y_offset,attack_radius)){
			image_index = 0;	
		}
		if(image_index > image_number-1){
			state = "chase";	
		}
		
	break;
	case "dead":
		instance_destroy();
	break;
}
#region checking if grounded	
	if(place_meeting(x,y+1,Obj_solid)){
		grounded = true;	
	}else{
		grounded = false;	
	}
#endregion
#region buffing the cavemen
if collision_circle(x,y-16,buff_radius,Obj_caveman,false,true) != noone {
	with(Obj_caveman){
		if !buff {
			Damage = Damage * other.buff_amount;
			buff = true;
		}
		if buff_create {
			instance_create_depth(x,y-(sprite_height+10),depth-1,Obj_buff_FX);	
			buff_create = false;
		}
	}
}
if collision_circle(x,y-16,buff_radius,Obj_rockman,false,true) != noone {
	with(Obj_rockman){
		if !buff {
			Damage = Damage * other.buff_amount;
			buff = true;
		}
		if buff_create {
			instance_create_depth(x,y-(sprite_height+10),depth-1,Obj_buff_FX);	
			buff_create = false;
		}
	}	
}
#endregion 

if(hp <= 0){
	state = "dead";	
}
vsp += global.grv;

#region collisions
	collision(true,true);
#endregion
