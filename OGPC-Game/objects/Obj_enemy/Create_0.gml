//movement variables
walk_sp = 1;
hsp = walk_sp;
vsp = 0;
run_sp = 2;
dir = image_xscale;
friction_ = 0.15;
//jump variables
jump_sp = 6;
jumped = false;
//other variables
hp = 100;
state = "norm";
flash = 0;
grounded = false;
//chasing variables
chase_timer = 2*60;
chase_amount = 2*60;