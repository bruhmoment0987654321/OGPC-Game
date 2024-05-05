action = keyboard_check_pressed(global.action);

if action && !bought && global.money >= price && place_meeting(x,y,Obj_player){
	instance_create_layer(x,y-x_offset,"Items",item);
	bought = true;
}
