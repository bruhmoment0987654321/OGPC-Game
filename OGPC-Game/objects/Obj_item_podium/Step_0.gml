action = keyboard_check_pressed(global.action);

if action && !bought && global.money >= price && place_meeting(x,y,Obj_player){
	instance_create_layer(x,y-x_offset,"Items",item);
	global.money -= price;
	bought = true;
	audio_play_sound(Snd_shop_buy,7,false);
}
