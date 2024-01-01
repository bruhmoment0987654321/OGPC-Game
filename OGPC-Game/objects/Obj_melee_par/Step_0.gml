left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
left_hold = keyboard_check(vk_left);
right_hold = keyboard_check(vk_right);
left_released = keyboard_check_released(vk_left);
right_released = keyboard_check_released(vk_right);

var anykey = left||right||up||down||left_hold||right_hold;
var released = left_released||right_released;
if(Obj_player.image_xscale = 1) front = 1; else front = -1; 
if(anykey){
	if(!is_swinging){
		//hitting in front of you
		if((left)&&(front = -1))||((right)&&(front = 1)){
			attack_type = "hit";
			if(attack_type == "hit"){
				Hit_attack();	
			}
					
		}
		//hittng behind you	
			//try figuring out how to charge an attack. having a visual indication by having particle arount it and having the attack loop the first 2 frames
			if((left_hold) && (front = 1))||((right_hold) && (front = -1)){
				attack_type = "charge"
				sprite_index = Spr_bonk_attack_behind_charge;
				if(attack_type == "charge"){
					Charging_attack();
				}
			}else if((left_hold) && (front = -1))||((right_hold) && (front = -1)){
			if(charge > 0)&&(attack_type == "charge"){
				Charging_attack();	
			}
		}
		//hitting on top of you
		if(up){
				
		}
		//a "boost" (breaks depending on what item you have)
		if(down){
			
		}
	}
}else{
	charge = 0;	
	
}
if(attack_type == "charge"){
	if(charged){
		if(released){
			sprite_index = Spr_bonk_attack_behind;
			image_index = 0;
			is_swinging = true;
			charge = 0;
			attack_multiplier = 2;
			alarm_set(1,1);
		}
	}else{
		if(released){
			sprite_index = Spr_bonk_attack_behind;
			image_index = 0;
			is_swinging = true;
			attack_multiplier = 1;
			charged = 0;
			alarm_set(1,1);
		}	
	}
}
if(is_swinging){
	if(image_index >= image_number-1){
		sprite_index = Spr_bonk_stick;
		is_swinging = false;
		image_xscale = Obj_player.image_xscale;
		attack_type = "";
		
	}
}
if(Obj_player.hsp != 0){
	image_xscale = sign(Obj_player.hsp);
}