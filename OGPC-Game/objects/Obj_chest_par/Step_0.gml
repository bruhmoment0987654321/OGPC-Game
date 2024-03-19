if global.game_state == GAME_STATE.PAUSED {
	return;
}
open = keyboard_check_pressed(global.action);

#region animation
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
#endregion