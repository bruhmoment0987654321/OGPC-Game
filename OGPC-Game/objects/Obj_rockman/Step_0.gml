event_inherited();
switch(state){
	case "norm":
		//going to shoot state
		if(sign(Obj_player.x - x) == image_xscale)
		&&((abs(Obj_player.y - y) < 16))
		&&(abs(Obj_player.x-x) <= dist)
		&&(collision_line(x,y-16,Obj_player.x,Obj_player.y-16,Obj_solid,false,false) == noone) state = "shoot";
		
		hsp = walk_sp*image_xscale;
		
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
	case "shoot":
		hsp = 0;
		countdown--;
		if(countdown < 17){	
			sprite_index = Spr_rockman_attack;
		}
		
		if(countdown <= 0){
			with(instance_create_layer(x,y-32,"Guns",Obj_rock)){
				image_xscale = other.image_xscale;
				speed = other.spd*image_xscale;
			}
			countdown = countdown_rate;
			state = "norm";
		}
	break;
	case "stunned":
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
	collision(true,true);
#endregion
