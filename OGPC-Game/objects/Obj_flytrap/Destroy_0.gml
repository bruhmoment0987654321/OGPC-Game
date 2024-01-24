// Inherit the parent event
event_inherited();
with(king_fly){
	follow = Obj_player;
	if(!variable_instance_exists(self,"fly_count")){
		fly_count = other.fly_count;
		fly_count_max = other.fly_count_max;
	}
}