event_inherited();
//movement variables
walk_sp = 1;
hsp = walk_sp;
vsp = 0;
run_sp = 1.5;
friction_ = 0.15;
//jump variables
jump_sp = 6;
jumped = false;
//other variables
hp = 80;
state = "norm";
flash = 0;
stun_amount = 3;
stun_timer = stun_amount;
grounded = false;
//shoot variables
countdown_rate = 40;
countdown = countdown_rate;
spd = 10;
dist = 250;