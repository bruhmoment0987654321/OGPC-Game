//gravity variables
global.grv = 0.3;
fall_muliplied = 1.1;
fall_sp = 1;
//movement variables
hsp = 0;
vsp = 0;
max_hsp = 3.7;
max_vsp = 8;
walk_sp = 0.7;
decrease_amount = 0.1;
normal_friction = 0.15;
friction_ = normal_friction;
ice_friction = 0.01;
//jump variables
jump_sp = 7;
buffer_timer = 0;
buffer_time_amount = 5;
coyote_timer = 0;
coyote_time_amount = 7;
jumped = true;
on_ground = false;
//health variables
invincible = false;
dont_die = false; //for cheat
death_timer = 100;
//gun varibles
which_weapon = noone; 
if(Obj_game.current_weapon == noone){
	which_weapon = Obj_arm_gun;
	instance_create_layer(x,y-13,"Guns",which_weapon);
}else{
	which_weapon = Obj_game.current_weapon;	
	instance_create_layer(x,y-13,"Guns",which_weapon);
}
//state variable
state = "normal";
//ladder variable
laddersp = 5;
on_ladder = false;
inst = noone;
//sound variables
sound = false;
//animation variables
xscale = 1;
yscale = 1;
enum FOOTSTEPS{
	STEP1=Snd_Footstep1,STEP2=Snd_Footstep2,STEP3=Snd_Footstep3,STEP4=Snd_Footstep4,STEP5=Snd_Footstep5
	}
Step_sound = choose(FOOTSTEPS.STEP1,FOOTSTEPS.STEP2,FOOTSTEPS.STEP3,FOOTSTEPS.STEP4,FOOTSTEPS.STEP5);
step_sound_timer_max = 21;
step_sound_timer = step_sound_timer_max;