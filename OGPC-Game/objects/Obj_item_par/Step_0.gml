if(object_index != Obj_bomb_pickup||Obj_metal_currency){
	if(point_distance(x,y,Obj_player.x,Obj_player.y) <= 50){
		hsp += sign(Obj_player.x-x)*spd;
		vsp += sign(Obj_player.y-y)*(spd+0.05);
	}else{
		hsp = lerp(hsp,0,friction_);
		if(abs(hsp) < 0.1){
			hsp = 0;	
		}
	}	
}
vsp += 0.1;
#region collisions
	collision(true,true);
#endregion