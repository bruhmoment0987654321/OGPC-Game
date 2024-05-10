// Inherit the parent event
event_inherited();
hp = 120;
state = "norm";
//movement vars
walk_sp = 1.3;
hsp = walk_sp;
vsp = 0;
run_sp = 3.1;
//jump variables
jumped = false;
jump_sp = 4;
friction_ = 0.1;
grounded = false;
jump_spring_sp = 5;
//attacking vars
dist = 250;
attack_dist = 50;
jumpdist = 1;
jumpheight = 2;
damage = 10;
first_time = true;
jump_timer_max = 40;
jump_timer = jump_timer_max;
knockout_timer_max = 60*2;
knockout_timer = knockout_timer_max;
stun_timer = 9;
stun_amount = 9;
//animation vars
xscale = 1;
yscale = 1;
