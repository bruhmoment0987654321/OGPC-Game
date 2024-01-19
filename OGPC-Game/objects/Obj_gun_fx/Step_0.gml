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