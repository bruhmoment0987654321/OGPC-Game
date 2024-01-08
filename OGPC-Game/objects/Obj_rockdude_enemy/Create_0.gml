event_inherited();
//movement variables
walk_sp = 1;
hsp = walk_sp;
vsp = 0;
run_sp = 1.5;
dir = image_xscale;
friction_ = 0.15;
//jump variables
jump_sp = 6;
jumped = false;
//other variables
hp = 80;
state = "norm";
flash = 0;
stun_timer = 9;
stun_amount = 9;
grounded = false;
//attack variables
throw_speed = 15;
active = false;