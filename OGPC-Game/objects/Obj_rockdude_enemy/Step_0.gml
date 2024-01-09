event_inherited();
switch(state){
	case "norm":
		if(place_meeting(x+hsp,y,Obj_solid)){
			hsp = -hsp;	
		}
		if(place_meeting(x,y+1,Obj_solid)){
			grounded = true;	
		}else{
			grounded = false;	
		}
		if(grounded)&&(!place_meeting(x+sprite_width/2,y+1,Obj_solid)){
			hsp = -hsp;
		}
		sprite_index = Spr_rockman;
		
	break;
	
	case "stunned":
		hsp = 0;
		sprite_index = Spr_rockman_stunned;
		stun_timer--;
		if(stun_timer <=0){
			stun_timer = stun_amount;
			state = "norm";
		}
	break;
	
	case "dead":
		with(rock_gun) instance_destroy();
		instance_destroy();
	break;
}
	
if(place_meeting(x,y+1,Obj_solid)){
	grounded = false;	
}else{
	grounded = true;	
}

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
