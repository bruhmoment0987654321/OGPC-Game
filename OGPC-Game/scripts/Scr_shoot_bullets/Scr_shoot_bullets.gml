function Shoot_Bullets(){
	with(Obj_gun_par){
		switch(object_index){
			case Obj_arm_gun:
				with(instance_create_layer(x,y,"Bullets",Obj_bullet)){
					speed = Obj_gun_par.spd;
					direction = Obj_gun_par.dir;
					image_xscale = max(1,speed/sprite_width);
					audio_play_sound(Snd_Lasergunshoot,5,false);
				}
				Screenshake(2,10);
			break;
		
			case Obj_cannon:
				with(instance_create_layer(x-(2*image_xscale),y,"Bullets",Obj_cannonball)){
					speed = Obj_gun_par.spd;
					direction = Obj_gun_par.dir;
					image_xscale = max(1,speed/sprite_width);
					audio_play_sound(Snd_cannon_shoot,6,false);
				}
				Screenshake(4,12);
			break;
		
			case Obj_grenade_launcher:
				with(instance_create_layer(x+15*image_xscale,y,"Bullets",Obj_bomb)){
					hsp = lengthdir_x(Obj_gun_par.spd,Obj_gun_par.dir);
					vsp = lengthdir_y(Obj_gun_par.spd,Obj_gun_par.dir);
					bounce = true;
					sprite_index = Spr_bomb_shoot;
				}
				audio_play_sound(Snd_grenade_launch,6,false);
				Screenshake(2,15);
			break;
		
			case Obj_three_gun:
				burst_timer = burst_delay;
				shoot_amount = 0;
			break;
			case Obj_shuriken:
				with(instance_create_layer(x-(2*image_xscale),y,"Bullets",Obj_shuriken_bullet)){
					speed = Obj_gun_par.spd;
					direction = Obj_gun_par.dir;
					image_xscale = max(1,speed/sprite_width);
				}
				audio_play_sound(Snd_rock_throw,6,false);
				Screenshake(2,5);
			break;
			case Obj_guitar_gun:
				with(instance_create_layer(x-(2*image_xscale),y,"Bullets",Obj_shockwave_bullet)){
					speed = Obj_gun_par.spd;
					direction = Obj_gun_par.dir;
					image_xscale = max(1,speed/sprite_width);
				}
				audio_play_sound(Snd_cannon_shoot,6,false);
				Screenshake(3,20);
			break;
		}
		curve_pos = 0;
		curve_spd = 0.05;
	}
}