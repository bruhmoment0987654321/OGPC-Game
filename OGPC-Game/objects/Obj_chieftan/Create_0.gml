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
hit_radius = 10;
attack_distance = 8;
tween_speed = 0.3;
Damage = 20;
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
