switch(state){
	case "norm":
		var dist_to_king_fly = distance_to_object(king_fly);
		if(dist_to_king_fly < 100){
			spawn_timer--;
			if(spawn_timer <= 0)&&(fly_count <= 30){
				fly_count += 1;
				with(king_fly){
					with(instance_create_layer(x+random_range(-5,5),y+random_range(-5,5),"Enemy",Obj_fly)){
						follow = other;	
					}
				}
				spawn_timer = spawn_timer_max;
			}
		}
		if(hp <= 0) state = "dead";
	break;
	case "dead":
		instance_destroy();
	break;
	
}

#region animations
	flash--;
#endregion