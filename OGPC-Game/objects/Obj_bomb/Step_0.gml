vsp += global.grv;
timer--;
if(place_meeting(x,y,Obj_caveman)){
	timer = 0;	
}

if(timer <= 0){
	instance_create_layer(x,y,"Bullets",Obj_explosion);
	instance_destroy();	
}
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
