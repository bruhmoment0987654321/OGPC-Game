if global.game_state == GAME_STATE.PAUSED {
	return;
}

interact = keyboard_check_pressed(ord("Q"));

if(point_distance(x,y,Obj_player.x,Obj_player.y) <= 50) && (interact){
	//the normal thing to happen when you pick up a gun
	Gun_pickup(Obj_armgun_pickup,Obj_arm_gun);		
	Gun_pickup(Obj_cannon_pickup,Obj_cannon);
	Gun_pickup(Obj_bonkstick_pickup,Obj_bonkstick);
	Gun_pickup(Obj_threegun_pickup,Obj_three_gun);
	Gun_pickup(Obj_grenade_pickup,Obj_grenade_launcher);
	Gun_pickup(Obj_shuriken_pickup,Obj_shuriken);
	Gun_pickup(Obj_guitargun_pickup,Obj_guitar_gun);
	instance_destroy();
}

vsp += 0.1;
#region collisions
	collision(true,true);
#endregion
