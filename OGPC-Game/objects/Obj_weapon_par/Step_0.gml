interact = keyboard_check_pressed(ord("Q"));
if(point_distance(x,y,Obj_player.x,Obj_player.y) <= 50) && (interact){
	if(instance_exists(Obj_player)){
		if(object_index == Obj_armgun_pickup){
			if(Obj_player.which_gun != noone){
				with(Obj_player.which_gun){
					instance_destroy();	
				}
			}else{
		
			}
			Obj_player.which_gun = Obj_arm_gun;
			instance_create_layer(x,y,"Guns",Obj_arm_gun);
		}
		if(object_index == Obj_cannon_pickup){
			if(Obj_player.which_gun != noone){
				with(Obj_player.which_gun){
					instance_destroy();	
				}
			}else{
		
			}
			Obj_player.which_gun = Obj_cannon;
			instance_create_layer(x,y,"Guns",Obj_cannon);
		}
	}
	instance_destroy();
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