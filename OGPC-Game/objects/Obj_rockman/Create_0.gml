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
//buff
buff = false;
buff_create = true;
//other variables
hp = 80;
state = "norm";
Damage = 20;
flash = 0;
stun_amount = 3;
stun_timer = stun_amount;
grounded = false;
//shoot variables
throw_one = false;
spd = 7;
dist = 200;