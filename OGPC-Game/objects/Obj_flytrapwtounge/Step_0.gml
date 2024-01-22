switch state {
	case "norm":
		with(tounge){
			if(image_yscale <= other.tounge_length){
				image_yscale += other.tounge_spd;	
			}
		}
		if pull {
			state = "pull"
		}
	break;
	
	case "pull":
		with tounge {
			image_yscale -= other.tounge_spd;
			if image_yscale <= 0 {
				other.state = "eat";
			}
		}
	break;
	
	case "eat":
		with(tounge){
			if(check_object == Obj_player){
				Player_attacked(other.damage,0);	
			}
		}
	break;
	
	case "dead":
		with(tounge){
			instance_destroy();	
		}
		instance_destroy();
	break;
}
if(hp <= 0){
	state = "dead";	
}
#region animation
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
	flash--;
#endregion