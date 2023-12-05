left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
jump = keyboard_check_pressed(vk_space);
item_use = keyboard_check_pressed(ord("E"));

if(state == "normal"){
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

#region state entries
if(place_meeting(x+hsp,y+vsp,Obj_ladder)){
	on_ladder = true 
	var move1 = down-up;
	if(move1!=0){
		vsp += move1*laddersp;
		vsp = clamp(vsp,-(max_vsp*0.75),(max_vsp*0.75));
	}else{
		vsp = 0;	
	}
}else{
	on_ladder = false	
}

#endregion

if(up && place_meeting(x,y,Obj_shop_door)){
	room_goto(Rm_shop);
}
#region item usage
if(item_use)&&(global.bomb_amount > 0){
	instance_create_layer(x,y,"Bullets",Obj_bomb);
	global.bomb_amount -= 1;	
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
}

#region animations
	if(hsp != 0) image_xscale = sign(hsp);
#endregion