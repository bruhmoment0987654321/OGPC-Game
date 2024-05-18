event_inherited();
if state != "attack"  Enemy_damaged(false,other.damage,0,"Bullet",false,"chase");
else Enemy_damaged(false,other.damage,0,"Bullet",false,"attack");
audio_play_sound(Snd_Caveman_hurt2,5,false);
var rand_pitch = random_range(0.8,1.2);
audio_sound_pitch(Snd_Caveman_hurt2,rand_pitch);