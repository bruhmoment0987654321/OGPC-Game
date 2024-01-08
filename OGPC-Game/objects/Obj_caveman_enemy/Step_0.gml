event_inherited();
switch(state){
	case "norm":
		if(place_meeting(x+hsp,y,Obj_solid)){
			hsp = -hsp;	
		}
		if(grounded)&&(!place_meeting(x+sprite_width/2,y+1,Obj_solid)){
			hsp = -hsp;
		}
		sprite_index = Spr_caveman;
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
		if(point_in_circle(Obj_player.x,Obj_player.y-16,x,y-16,attack_radius)){
			activation = true;
			state = "attack";
		}
		sprite_index = Spr_caveman_angry;
	break
	
	case "attack":
		sprite_index = Spr_caveman_attack;
		hsp = 0;	
		if(activation){
			image_index = 0;
			activation = false;
		}
		if(image_index >= 3){
			hsp += ((attack_distance - hsp) * tween_speed) * image_xscale;
			if(point_in_circle(Obj_player.x,Obj_player.y-16,x+15*image_xscale,y-16,hit_radius)){
				with(Obj_player){
					Player_attacked(20,Obj_caveman_enemy.knockb*Obj_caveman_enemy.image_xscale);
				}
			}
		}
		if(image_index >= 4) && (point_in_circle(Obj_player.x,Obj_player.y-16,x,y-16,attack_radius)){
			image_index = 0;	
		}
		if(image_index >= image_number-1){
			state = "chase";	
		}
		
	break;
	case "stunned":
		hsp = 0;
		sprite_index = Spr_caveman_stunned;
		stun_timer--;
		if(stun_timer <=0){
			stun_timer = stun_amount;
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
if(hp <= 0){
	state = "dead";	
}
vsp += global.grv;

#region collisions
	//horizontal collision
	if(place_meeting(x+hsp, y,Obj_solid)){
	    while(!place_meeting(x+sign(hsp),y,Obj_solid)){
	        x+= sign(hsp);
	    }
	    hsp = 0;
	}
	x += hsp;

	//vertical collision
	if(place_meeting(x, y+vsp, Obj_solid)){
	    while(!place_meeting(x,y+sign(vsp),Obj_solid)){
	        y += sign(vsp);
	    }
	    vsp = 0;
	}

	y += vsp;
#endregion
