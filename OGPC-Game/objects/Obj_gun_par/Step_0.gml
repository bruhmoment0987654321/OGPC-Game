left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
any = left||right||up||down;

delay_timer--;

#region directions
var hor_shot = right-left;
var ver_shot = down-up;
dir = point_direction(0,0,hor_shot,ver_shot);
direction = (round(dir/45)*45);
#endregion

if(any)&&(delay_timer<=0){
	Scr_shoot_bullets();
	delay_timer = delay;
}
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

