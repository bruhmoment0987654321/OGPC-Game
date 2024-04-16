enum FOOTSTEPS {
	STEP1 = Snd_Footstep1,
	STEP2 = Snd_Footstep2,
	STEP3 = Snd_Footstep3,
	STEP4 = Snd_Footstep4,
	STEP5 = Snd_Footstep5,
}

//gravity variables
global.grv = 0.3;
fall_muliplied = 1.1;
fall_sp = 1;
//movement variables
hsp = 0;
vsp = 0;
max_hsp = 3.7;
max_vsp_normal = 8;
max_vsp = max_vsp_normal;
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
invincible_timer_amount = 60;
invincible_timer = 0;
invincible = false;
dont_die = false; //for cheat
death_timer = 100;
//state variable
state = "normal";
//ladder variable
laddersp = 0.5;
on_ladder = false;
max_vsp_ladder = 5;
inst = noone;
//sound variables
sound = false;
//animation variables
xscale = 1;
yscale = 1;
//sound variables
Step_sound = choose(FOOTSTEPS.STEP1,FOOTSTEPS.STEP2,
FOOTSTEPS.STEP3,FOOTSTEPS.STEP4,FOOTSTEPS.STEP5);
step_sound_timer_max = 21;
step_sound_timer = step_sound_timer_max;
//dashing variables
dashdistance = 82; // how far the dash goes
dashtime = 10; // the amount of time the dash is used
dashcooldown = 5*60; 
dash_timer = dashcooldown;
//gun varibles
which_weapon = noone;
which_weapon_pickup = pickup_type;
//equipping the default weapon to player
if Obj_game.current_weapon == noone {
	which_weapon = weapon_type;
	which_weapon_pickup = pickup_type;
	instance_create_layer(x,y-13,"Guns",which_weapon);
}else{
	which_weapon = Obj_game.current_weapon;	
	which_weapon_pickup = Obj_game.current_pickup;
	instance_create_layer(x,y-13,"Guns",which_weapon);
}
//melee variables
	//player control section
active = true
function Enable(){ 
	active = true;
}
function Disable(){
	active = false;
	alarm[0] = 1;
	hsp = 0;
	vsp = 0;
}

//------------used for attacks----------//
	//sequences section
activeAnimation = -1;
activeSequence = -1;
seq_inst = -1;

function StartAnimation(_sequence){
	activeAnimation = _sequence;
	activeSequence = layer_sequence_create(layer, x, y, _sequence);
	seq_inst = layer_sequence_get_instance(activeSequence);

	layer_sequence_xscale(activeSequence, image_xscale);
	
	Disable();
}

function CheckAnimation(){
	if (activeSequence == undefined) return;
	if (layer_sequence_is_finished(activeSequence)){
		x = instance_nearest(x,y,Obj_player_tracker).x;
		y = instance_nearest(x,y,Obj_player_tracker).y;
		layer_sequence_destroy(activeSequence);
		activeAnimation = -1;
		activeSequence = -1;
		seq_inst = -1;
		Enable();
	}
}