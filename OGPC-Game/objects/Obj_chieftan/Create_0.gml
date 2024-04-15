event_inherited();
//movement variables
walk_sp = 1.2;
hsp = walk_sp;
vsp = 0;
run_sp = walk_sp;
friction_ = 0.15;
//jump variables
jump_sp = 6;
jumped = false;
//attack variables
activation = true;
attack_radius = 30
attack_circ_y_offset = 32;
hit_radius = 20;
hit_circ_x_offset = 15;
hit_circ_y_offset = 16;
Damage = 30;
//buff variables
buff_amount = 1.3;
buff_radius = 100;
//other variables
hp = 200;
state = "norm";
stun_timer = 9;
stun_amount = 9;
grounded = false;
explosion_damage = 150;
//sound variables
hurt_sound[0] = Snd_Caveman_hurt;
hurt_sound[1] = Snd_Caveman_hurt2;
