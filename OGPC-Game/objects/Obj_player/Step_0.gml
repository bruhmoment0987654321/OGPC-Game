left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);

#region movement functions
	var move = right-left;
	if(move != 0){
		hsp += move*walk_sp;
		hsp = clamp(hsp,-max_hsp,max_hsp);
	}else{
		if(move < 0){
			if(hsp > -0.1){
				hsp = 0;	
			}
		}else if(move > 0){
			if(hsp < 0.1){
				hsp = 0;	
			}
		}
		hsp = lerp(hsp,0,friction_);
	}
	vsp += global.grv;
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
		jumped = true;
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

#region collisions
	//horizontal collision
	if(place_meeting(x+hsp, y,Obj_solid))
	{
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

#region animations
	if(hsp != 0) image_xscale = sign(hsp);
#endregion