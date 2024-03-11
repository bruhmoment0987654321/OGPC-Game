event_inherited();
switch(state){
	case "normal": 
	sprite_index = Spr_ninja_player;
	break;
	case "pinned": sprite_index = Spr_ninja_pinned; break;
	case "dash": sprite_index = Spr_ninja_player; break;
	case "ladder": sprite_index = Spr_ninja_player; break;
}
