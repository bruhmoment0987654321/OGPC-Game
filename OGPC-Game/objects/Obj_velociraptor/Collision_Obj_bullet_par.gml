// Inherit the parent event
event_inherited();
if state == "attack" {
	Enemy_damaged(false,other.damage,0,"Bullet",true);
	if(instance_exists(Obj_player)){
		x = Obj_player.x+5*-image_xscale;
		y = Obj_player.y;
	}
}
else Enemy_damaged(false,other.damage,0,"Bullet",false, "chase");

