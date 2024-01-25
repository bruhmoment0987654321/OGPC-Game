var near_flytrap = instance_nearest(x,y,Obj_flytrap);

if instance_exists(near_flytrap) {
	follow = near_flytrap;
}else{
	follow = Obj_player;
	if(variable_instance_exists(self,"fly_count")){
		spawn_timer--;
		if(spawn_timer <= 0)&&(fly_count <= fly_count_max){
			fly_count += 1;
			with instance_create_layer(x+random_range(-5,5),y+random_range(-5,5),"Enemy",Obj_fly){
				follow = other;	
			}
			spawn_timer = spawn_timer_max
		}
	}
}

//chasing the player
hsp += sign(follow.x-x)*spd;
vsp += sign(follow.y-y)*spd;
if limit_speed {
	hsp = clamp(hsp,-max_sp,max_sp);
	vsp = clamp(vsp,-max_sp,max_sp);
}

x += hsp;
y += vsp;