// Inherit the parent event
if (!Obj_player.active) exit;

if global.game_state == GAME_STATE.PAUSED {
	return;
}
event_inherited();
if left||right {
	with Obj_player StartAnimation(other.attack_num_one);
}

