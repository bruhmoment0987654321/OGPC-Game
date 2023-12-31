left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
left_hold = keyboard_check(vk_left);
right_hold = keyboard_check(vk_right);
left_released = keyboard_check_released(vk_left);
right_released = keyboard_check_released(vk_right);

var anykey = left||right||up||down;
if(Obj_player.image_xscale = 1) front = 1; else front = -1; 
if(anykey){
	if(!is_swinging){
		//hitting in front of you
		if((left)&&(front = -1))||((right)&&(front = 1)){
			sprite_index = Spr_bonk_attack;
			image_index = 0;
			is_swinging = true;
			//hitbox
			alarm_set(0,2);		
		}
		//hittng behind you
		if((left)&&(front = 1))||((right)&&(front = -1)){
			sprite_index = Spr_bonk_attack_behind;	
			image_index = 0;
			is_swinging = true;
			var _charge = left_hold||right_hold;
			var released = left_released||right_released;
			
			//try figuring out how to charge an attack. having a visual indication by having particle arount it and having the attack loop the first 2 frames
			
			if(_charge && charge >= charge_max){
				if(released){
					attack_multiplier = 2;
					charge = 0;
				}
			}
			if(_charge && charge < charge_max){
				charge += 1;
				if(released){
					charge = 0;
					attack_multiplier = 1;
				}
			}
			
		}
		//hitting on top of you
		if(up){
				
		}
		//a "boost" (breaks depending on what item you have)
		if(down){
				
		}
	}
}
if(is_swinging){
	if(image_index >= image_number-1){
		sprite_index = Spr_bonk_stick;
		is_swinging = false;
		image_xscale = Obj_player.image_xscale;
	}
}
if(Obj_player.hsp != 0){
	image_xscale = sign(Obj_player.hsp);
}