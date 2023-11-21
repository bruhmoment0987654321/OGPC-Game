if(state == "norm"){
	if(instance_exists(Obj_player)){
		if(x<Obj_player.x-10){
			hsp = walk_sp;	
		}else if (x>Obj_player.x+10){
			hsp = -walk_sp;
		}else{
			hsp = lerp(hsp,0,friction_);	
		}
	}
	if(place_meeting(x+hsp,y,Obj_solid)||hsp == 0){
		timer--;
		if(timer < 0){
			vsp -= jump_sp;
			timer = timer_amount;
		}
	}
}
if(state == "dead"){
	instance_destroy();
}
if(hp<=0){
	state = "dead";	
}
vsp += global.grv;
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
	flash--;
#endregion
