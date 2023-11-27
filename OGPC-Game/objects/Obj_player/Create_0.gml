//global variables
global.grv = 0.3;
global.debug = false;
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
coyote_time_amount = 20;
jumped = true;
on_ground = false;
//health variables
shield = 0;
shield_max = 100;
max_hp = 100;
hp = max_hp;
invincible = false;
//bomb variables
bomb_amount = 0;
bomb_max = 10;
//gun varibles
which_gun = noone;
randomize();