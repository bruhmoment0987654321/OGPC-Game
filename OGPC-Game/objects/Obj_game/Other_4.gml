if global.starting_over{
	Start_over();	
}

//sound starting in levels
if room == Rm_title {
	audio_play_sound(Snd_title,8,true);
	audio_sound_gain(Snd_title,0,0);
	audio_sound_gain(Snd_title,0.7,5*60);
}	

if room == Rm_prehistoric {
	if !audio_is_playing(Snd_level1){
		audio_play_sound(Snd_level1,9,true);
		audio_sound_gain(Snd_level1,0,0);
		audio_sound_gain(Snd_level1,0.7,5*60);
	}
	instance_create_depth(x,y,-9999999999999999999,Obj_round_display);
}
if room == Rm_ctrl_rm {
	audio_play_sound(Snd_tutorial,9,true);
	audio_sound_gain(Snd_tutorial,0,0);
	audio_sound_gain(Snd_tutorial,0.2,5*60);
}