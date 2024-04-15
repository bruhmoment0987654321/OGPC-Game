if (!Obj_player.active) exit;
if global.game_state == GAME_STATE.PAUSED {
	return;
}

left = keyboard_check_pressed(global.shoot_left);
right = keyboard_check_pressed(global.shoot_right);
var any = left||right;
if global.cantpress || global.cantpress_commands || global.playercant{
	any = 0;
}
if instance_exists(Obj_hitbox){
	Obj_hitbox.damage = weapon_damage;
	Obj_hitbox.kb = weapon_knockback;
}

#region animations
image_xscale = Obj_player.image_xscale;
#endregion