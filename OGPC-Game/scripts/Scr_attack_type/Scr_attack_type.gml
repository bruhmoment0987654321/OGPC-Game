//--------------------------------------bonk_stick---------------------------------------//
function Charging_attack(){
		charge += 1;
		if(charge >= charge_max){
			charged = true;
		}else{
			charged = false;
			
		}
}
function Charge_attack(){
	var released = left_released||right_released;
	if(charge == 20){
		with(instance_create_layer(x,y,"FX",Obj_charge_fx)){
			//adjust the x offset/y offset to fit the weapon
			var x_offset = -10;
			var y_offset = -30;
			offset_x = x_offset;
			offset_y = y_offset;
			follow = Obj_melee_par;
			image_blend = c_red;
			color_2 = c_yellow;
			image_alpha = 0.7;
		}
	}
	if(charged){
		if(released){
			sprite_index = Spr_bonk_attack_behind;
			image_index = 0;
			is_swinging = true;
			charge = 0;
			attack_multiplier = 1.3;
			alarm_set(1,15);
			alarm_set(4,20);//hehe
			instance_destroy(Obj_charge_fx);
			
		}
	}else{
		if(released){
			sprite_index = Spr_bonk_attack_behind;
			image_index = 0;
			is_swinging = true;
			attack_multiplier = 1;
			charged = 0;
			alarm_set(1,15);
			alarm_set(4,20);//hehe
			instance_destroy(Obj_charge_fx);
		}	
	}
}
function Hit_attack(){
	sprite_index = Spr_bonk_attack;
	image_index = 0;
	is_swinging = true;
	//hitbox
	alarm_set(0,10);	
}
function Up_attack(){
	sprite_index = Spr_bonk_attack_up;
	image_index = 0;
	is_swinging = true;
	attack_multiplier = 1.5
	//hitbox
	alarm_set(2,15);
	alarm_set(5,22);
}
function Down_attack(){
	sprite_index = Spr_bonk_attack_down;
	image_index = 0;
	is_swinging = true;
	//hitbox
	attack_multiplier = 1.2;
	alarm_set(3,18);
	alarm_set(6,22);
}