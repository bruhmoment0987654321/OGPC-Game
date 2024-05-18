event_inherited();

if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
	return;	
}else if global.game_state == GAME_STATE.RUNNING image_speed = 1;
switch(state){
	case "norm":
		//going to shoot state
		if(instance_exists(Obj_player)){
			if(sign(Obj_player.x - x) == image_xscale)
			&&((abs(Obj_player.y - y) < 16))
			&&(abs(Obj_player.x-x) <= dist)
			&&(collision_line(x,y-16,Obj_player.x,Obj_player.y-16,Obj_solid,false,false) == noone){
				image_index = 0;
				state = "shoot";
			}
		}
		hsp = walk_sp*image_xscale;
		
		if(place_meeting(x+hsp,y,Obj_solid)){
			hsp = -hsp;	
		}
		
		if(grounded)&&(!place_meeting(x+sprite_width/2,y+1,Obj_solid)){
			hsp = -hsp;
		}
		
		sprite_index = Spr_rockman;
	break;
	case "shoot":
		hsp = 0;
		sprite_index = Spr_rockman_attack;
		if In_between(image_index,4,5){
			if throw_one{
				with(instance_create_layer(x,y-32,"Guns",Obj_rock)){
					image_xscale = other.image_xscale;
					speed = other.spd*image_xscale;
					damage = other.Damage;
				}
				audio_play_sound(Snd_rock_throw,6,false);
				throw_one = false;
			}
		}
		if image_index > image_number-1 {
			throw_one = true;
			state = "norm";
		}
	break;
	
	case "dead":
		instance_destroy();
	break;
}

if(hp <= 0){
	state = "dead";	
}

vsp += global.grv;
if(place_meeting(x,y+1,Obj_solid)){
	grounded = true;	
}else{
	grounded = false;	
}
#region collisions
	collision(true,true);
#endregion
