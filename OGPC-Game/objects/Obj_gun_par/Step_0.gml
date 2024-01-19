left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
var any = left||right||up||down;

delay_timer--;

#region directions
var hor_shot = right-left;
var ver_shot = down-up;
dir = point_direction(0,0,hor_shot,ver_shot);
direction = (round(dir/45)*45);
#endregion
if(global.cantpress)||(global.cantpress_commands){
	any = 0;	
}
if(any)&&(delay_timer<=0){
	burst_dir = direction;
	Scr_shoot_bullets();
	delay_timer = delay;
}
#region animation curve for gun recoil
switch(object_index){
	case Obj_arm_gun: curve_type = A_armgun; break;
	case Obj_cannon: curve_type = A_cannon; break;
	case Obj_three_gun: curve_type = A_threegun break;
	case Obj_grenade_launcher: curve_type = A_grenade; break;
}
curve_pos += curve_spd;

var curveStruct = animcurve_get(curve_type);
//change gun's angle
var channel = animcurve_get_channel(curveStruct,"angle");
var angvalue = animcurve_channel_evaluate(channel,curve_pos);
_img_angle = image_angle - (angvalue*sign(image_yscale));

//move gun's x position
var channel = animcurve_get_channel(curveStruct,"x");
var xvalue = animcurve_channel_evaluate(channel,curve_pos);
_x = x + lengthdir_x(xvalue,_img_angle);

//reset animation curve position
if(curve_pos >= 1){
	curve_spd = 0;
	curve_pos = 0;
	curve_type = noone;
}
#endregion
if(instance_exists(Obj_player)){

	if(Obj_player.image_xscale > 0){
		
	if(direction > 90)&&(direction<270){
		image_yscale = -1;
	}else{
		image_yscale = 1;	
	}
	
	image_angle = direction;
	
	}else if(Obj_player.image_xscale < 0){
		if(!any){
			image_angle = direction+180;
			image_yscale = -1;
		}else{
			image_angle = direction;
			if(direction > 90)&&(direction<270){
				image_yscale = -1;
			}else{
				image_yscale = 1;	
			}
		}
		
		
	}
}

