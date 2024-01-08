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
		/*
		if(point_in_rectangle(Obj_player.x,Obj_player.y,x-10,y-40,x+100,y))&&(image_xscale == 1){
			active = false;
			state = "attack";
		}else if(point_in_rectangle(Obj_player.x,Obj_player.y,x+10,y+40,x-100,y))&&(image_xscale == -1){
			active = false;
			state = "attack";	
		}
		*/
	break;
	
	case "attack":
		sprite_index = Spr_rockman_attack;
		if(!active){
			image_index = 0;
			active = true;	
		}
		if(image_index >= 3){
			with(instance_create_layer(x,y,"Bullets",Obj_rock)){
				speed = Obj_rockdude_enemy.throw_speed*Obj_rockdude_enemy.image_xscale;
				attacker = "enemy";
			}
		}
		if(image_index >= image_number-1){
			state = "norm";	
		}
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
