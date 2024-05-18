Enemy_damaged(true,other.damage,0,"Explosion",false,"dead");
score += 200;
audio_play_sound(Snd_Caveman_hurt,5,false);
var rand_pitch = random_range(0.8,1.2);
audio_sound_pitch(Snd_Caveman_hurt,rand_pitch);