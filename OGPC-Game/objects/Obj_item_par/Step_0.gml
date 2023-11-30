if(object_index != Obj_bomb_pickup||Obj_metal_currency){
	if(point_distance(x,y,Obj_player.x,Obj_player.y) <= 50){
		hsp += sign(Obj_player.x-x)*spd;
		vsp += sign(Obj_player.y-y)*(spd+0.05);
	}else{
		hsp = lerp(hsp,0,friction_);
		if(abs(hsp) < 0.1){
			hsp = 0;	
		}
	}	
}
vsp += 0.1;
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