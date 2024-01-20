// Inherit the parent event
event_inherited();
hp = 100;
state = "norm";
king_fly = instance_create_layer(x+10*choose(-1,1),y+15*choose(-1,1),"Enemy",Obj_kingfly);
fly_count = irandom_range(6,12);
spawn_timer_max = 200;
spawn_timer = spawn_timer_max;
with(king_fly){
	follow = other;
	repeat(other.fly_count){
		with(instance_create_layer(x+random_range(-5,5),y+random_range(-5,5),"Enemy",Obj_fly)){
			follow = other;	
		}
	}
}	
flash = 0;
which_item = irandom_range(0,2);