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
stun_amount = 4;
stun_timer = stun_amount;
grounded = false;
//rock variables
rock_gun = instance_create_layer(x,y,"Guns",Obj_rock_shooter);	
active = false;
dist = 100;