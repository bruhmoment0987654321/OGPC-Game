left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
any = left||right||up||down;

#region directions
var hor_shot = right-left;
var ver_shot = down-up;
dir = point_direction(0,0,hor_shot,ver_shot);
direction = round(dir/45)*45;
#endregion
if(any){
	delay_timer--;
	if(delay_timer<=0){
		with(instance_create_layer(x,y,"Bullets",Obj_bullet)){
			speed = Obj_gun.spd;
			direction = Obj_gun.dir;
		}
		delay_timer = delay;
	}	
}

if(instance_exists(Obj_player)){
	if(Obj_player.image_xscale < 0)||(direction > 90)&&(direction<270){
		image_yscale = -1;
	}else{
		image_yscale = 1;	
	}
	if(Obj_player.image_xscale > 0){
		image_angle = direction;		
	}else if(Obj_player.image_xscale < 0){
		if(!any){
		  image_angle = direction+180;
		}else{
		image_angle = direction;	
		}
	}
}
