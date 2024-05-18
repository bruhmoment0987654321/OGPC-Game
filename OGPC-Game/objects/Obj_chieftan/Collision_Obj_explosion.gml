Enemy_damaged(false,explosion_damage,0,"Explosion",false,"chase");
audio_play_sound(Snd_Caveman_hurt2,5,false);
var rand_pitch = random_range(0.8,1.2);
audio_sound_pitch(Snd_Caveman_hurt2,rand_pitch);