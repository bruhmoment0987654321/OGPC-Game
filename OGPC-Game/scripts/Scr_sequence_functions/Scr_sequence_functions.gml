function Go_Back_Alpha(){
	if instance_exists(Obj_player){
		with(Obj_player){
			x = instance_nearest(x,y,Obj_player_tracker).x;
			y = instance_nearest(x,y,Obj_player_tracker).y;
			image_alpha = 1;
		}
		with(Obj_bonkstick){
			image_alpha = 1;	
		}
	}
}