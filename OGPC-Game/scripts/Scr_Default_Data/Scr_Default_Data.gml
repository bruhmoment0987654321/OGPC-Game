// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Default_Data(){
	global.first_time_playing = true;
	if file_exists("save_data.txt"){
		file_delete("save_data.txt")	
	}
	highscore_clear();
	Load_Default_Scores();
	Transition_Start(room,Sq_spike_out,Sq_spike_in);
		if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
}