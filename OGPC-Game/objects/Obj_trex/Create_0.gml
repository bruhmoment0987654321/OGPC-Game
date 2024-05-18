state = "norm";
pre_state = "";
hp_max = 2000;
hp = hp_max;

//movement vars
hsp = 0;
vsp = 0;
max_hsp = 10;

//norm var
break_time_max = 3*60;
break_time = break_time_max;

//charge vars
charge_timer_max = 60*3;
charge_timer = charge_timer_max;
charge_sp = 0.3;

charging_timer_max = 3*60;
charging_timer = charging_timer_max;

mach_effect = instance_create_layer(x,y,"FX",Obj_charge_hitbox);

//roar vars
erupt_timer_max = 60;
erupt_timer = erupt_timer_max;

scream_timer_max = 1.5*60;
scream_timer = scream_timer_max;

create_shock = true;

//bite vars
chase_timer_max = 4*60;
chase_timer = chase_timer_max;
run_sp = 4;
friction_ = 0.2;

	//attacking vars
	activation = true;
	attack_distance = 10;
	tween_speed = 0.2;
	
	hit_radius = 65;
	attack_radius = 90;
	bite_damage = 25;
	
//death var
death_timer = 5*60;
push = false;
//invincibility frames
flash = 0;

xscale = 1;
yscale = 1;

invincible = false
i_frame_time = 0;
i_frame_timer_max = 60;

collide = true;