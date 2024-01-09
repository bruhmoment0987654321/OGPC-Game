//global variables
global.grv = 0.3;
//movement variables
hsp = 0;
vsp = 0;
max_hsp = 3.7;
max_vsp = 8;
walk_sp = 0.7;
friction_ = 0.15;
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
//gun varibles
which_weapon = noone; 
//state variable
state = "normal";
//ladder variable
laddersp = 5;
on_ladder = false;
//sound variables
sound = false
randomize();