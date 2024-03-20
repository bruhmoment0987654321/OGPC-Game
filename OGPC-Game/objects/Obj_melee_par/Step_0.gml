if global.game_state == GAME_STATE.PAUSED {
	image_speed = 0;
	return;
}

left = keyboard_check_pressed(global.shoot_left);
right = keyboard_check_pressed(global.shoot_right);
up = keyboard_check_pressed(global.shoot_up);
down = keyboard_check_pressed(global.shoot_down);
left_hold = keyboard_check(global.shoot_left);
right_hold = keyboard_check(global.shoot_right);
left_released = keyboard_check_released(global.shoot_left);
right_released = keyboard_check_released(global.shoot_right);

var anykey = left||right||up||down||left_hold||right_hold;

if(global.cantpress)||(global.cantpress_commands)||(global.playercant){
	anykey = 0;
	left_released = 0;
	right_released = 0;
}
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
		if((left_hold) && (front = 1))||((right_hold) && (front = -1)){
			attack_type = "charge";
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
			attack_type = "up";
			if(attack_type == "up"){
				Up_attack();	
			}
		}
		//a "boost" (breaks depending on what item you have)
		if(down){
			attack_type = "down";
			if(attack_type == "down"){
				Down_attack();
			}
		}
	}
}else{
	charge = 0;	
	
}
if(attack_type == "charge"){
	Charge_attack();
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