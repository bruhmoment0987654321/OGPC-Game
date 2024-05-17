if global.game_state == GAME_STATE.PAUSED {
	return;
}

vsp += bomb_grv;
timer--;
if place_meeting(x,y,Obj_enemy_par)|| place_meeting(x,y,Obj_bullet_par) || place_meeting(x,y,Obj_trex){
	timer = 0;	
}
//friction
if(abs(hsp)>0.1){
	hsp = max(0,abs(hsp) - fric) * sign(hsp)
}else{
	hsp = 0;	
}

if(timer <= 0){
	instance_create_layer(x,y,"Bullets",Obj_explosion);
	if(!global.playercant){
		Screenshake(4,60);
	}
	instance_destroy();	
}
//bouncing
if(place_meeting(x+hsp,y,Obj_solid)) hsp *= -bounce_decay;
if(place_meeting(x,y+vsp,Obj_solid)) vsp *= -bounce_decay;
#region collisions
	collision(true,true);
#endregion
