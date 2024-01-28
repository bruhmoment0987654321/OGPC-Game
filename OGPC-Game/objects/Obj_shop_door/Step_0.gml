up = keyboard_check_pressed(ord("W"));
if(global.cantpress)||(global.cantpress_commands){
	up = 0;
}
if(!place_meeting(Obj_player.x,Obj_player.y,self)) pressed = false;


