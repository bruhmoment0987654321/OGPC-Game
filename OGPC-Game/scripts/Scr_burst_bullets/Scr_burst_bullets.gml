function Burst_Bullets(){
	switch(object_index){
		case Obj_three_gun:
			if(shoot_amount < shoot_amount_max){
				with(instance_create_layer(x+(3*image_xscale),y,"Bullets",Obj_three_bullet)){
					speed = Obj_gun_par.spd;
					direction = Obj_gun_par.burst_dir;
					image_xscale = max(1,speed/sprite_width);
				
				}
				audio_play_sound(Snd_Lasergunshoot,5,false);
				Screenshake(3,5);
				curve_pos = 0;
				curve_spd = 0.05;
				shoot_amount++;
				burst_timer = burst_delay;	
			}
		break;
	}
}