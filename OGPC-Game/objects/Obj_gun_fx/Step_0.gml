if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
	if speed > 0 {
		stored_speed = speed; 
		speed = 0;	
	}
	if gravity > 0 {
		stored_grv = grv;
		gravity = 0;
	}
	return;	
}else if global.game_state == GAME_STATE.RUNNING {
	if stored_speed != 0 {
		speed = stored_speed;
		stored_speed = 0;
	}
	if stored_grv != 0 {
		gravity = stored_grv;
		stored_grv = 0;
	}
	if !debris image_speed = 1;
}

speed *= fric;
if(!debris){
	if(image_index >= image_number-1) instance_destroy();
}else{
	//vertical collision 
	if(place_meeting(x,y+sign(vspeed),Obj_solid)){
		while(!place_meeting(x,y+sign(vspeed),Obj_solid)){
		        y += sign(vspeed);
		    }
		vspeed = 0;	
		gravity = 0;
	}else gravity = grv;
	//horizontal collision
	if(place_meeting(x+sign(hspeed),y,Obj_solid)){
		while(!place_meeting(x+sign(hspeed),y,Obj_solid)){
		        x += sign(hspeed);
		    }
		hspeed = 0;	
		gravity = 0;
	}else gravity = grv;
	
}

if hooked_on {
	
}

timer--;
if timer < 0 {
image_alpha -= 0.05;
	if(image_alpha <= 0){
		instance_destroy();	
	}
}