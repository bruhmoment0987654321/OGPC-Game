event_inherited();
Enemy_damaged(false,other.damage,0,"Bullet",false,"norm");
audio_play_sound(Snd_Caveman_hurt,5,false);
var rand_pitch = random_range(0.8,1.2);
audio_sound_pitch(Snd_Caveman_hurt,rand_pitch);