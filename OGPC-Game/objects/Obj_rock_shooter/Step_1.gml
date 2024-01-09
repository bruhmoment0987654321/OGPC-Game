var d = Obj_rockdude_enemy.id;
x = d.x;
y = d.y-16;

if(instance_exists(Obj_player)){
	if(Obj_player.x < x) image_yscale = -image_yscale;
	if(point_direction(Obj_player.x,Obj_player.y,x,y)>100){
		image_angle = point_direction(Obj_player.x,Obj_player.y,x,y);
		countdown--;
		if(countdown <= 0){
			if(!collision_line(x,y,Obj_player.x,Obj_player.y,Obj_solid,false,false)){
				countdown = countdown_rate;
				with(instance_create_layer(x,y,"Bullets",Obj_rock)){
					speed = other.spd;
					direction = other.image_angle+random_range(-3,3);
					image_angle = direction;
				}
			}
		}
	}
}