switch(room){
	case Rm_prehistoric:
		if !activate {
			sprite_index = Spr_grass_tile_procerdural_generation;
			image_index = AutoTiling();
			activate = true;
		}
	break;
}
