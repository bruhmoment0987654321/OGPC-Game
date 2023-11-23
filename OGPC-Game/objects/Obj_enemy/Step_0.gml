if(state == "norm"){
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
}
	
if(state == "chase"){
	chase_timer--;
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
	if(chase_timer<=0)&&(point_in_circle(Obj_player.x,Obj_player.y,x,y,150)){
		chase_timer = chase_amount;	
	}else if(!point_in_circle(Obj_player.x,Obj_player.y,x,y,150)){
		state = "norm";
		chase_timer = chase_amount;
		hsp = walk_sp;
	}
}
	
if(state == "dead"){
	instance_destroy();
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
#region animations
	if(hsp != 0) image_xscale = sign(hsp);
	flash--;
#endregion
