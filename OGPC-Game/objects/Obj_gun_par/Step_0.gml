left = keyboard_check(global.shoot_left);
right = keyboard_check(global.shoot_right);
up = keyboard_check(global.shoot_up);
down = keyboard_check(global.shoot_down);
var any = left||right||up||down;
if global.cantpress || global.cantpress_commands || global.playercant {
	any = 0;	
}

delay_timer--;

#region directions
var hor_shot = right-left;
var ver_shot = down-up;
dir = point_direction(0,0,hor_shot,ver_shot);
if instance_exists(Obj_cam) && !global.playercant {
	with(Obj_cam){
		aim_x = hor_shot;	
		aim_y = ver_shot;
	}
}
direction = (round(dir/45)*45);
#endregion

if any && delay_timer<=0 {
	burst_dir = direction;
	Scr_shoot_bullets();
	delay_timer = delay;
}
#region animation curve for gun recoil
Gun_anicurves(Obj_arm_gun, A_armgun);
Gun_anicurves(Obj_cannon, A_cannon);	
Gun_anicurves(Obj_three_gun, A_threegun);
Gun_anicurves(Obj_grenade_launcher, A_grenade);
Gun_anicurves(Obj_shuriken, A_shuriken);

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
#region angles for the gun
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
#endregion
