switch(room){
	case Rm_prehistoric:
		if !activate {
			sprite_index = Spr_grass_tile_procerdural_generation;
			AutoTiling(self);
			activate = true;
		}
	break;
}
