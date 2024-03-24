global.pauseable = false;
global.bomb_amount = 10;
scale = 1.5;
scale_for_outside = 2.0; //the size of the text used for the static text in the world
//area that the player reaches. it checks the players x position
first_area_start = 703;
first_area_end = 912;
second_area_start = 1110;
second_area_end = 1536;
third_area_start = 1572;
third_area_end = 1822;
fourth_area_start = 1853;
fourth_area_end = 1924;
fifth_area_start = 1997;
fifth_area_end = 2092;
sixth_area_start = 2270;
sixth_area_end = 2385;
seventh_area_start = 2379;
seventh_area_end = room_width;

//making the menu when the player is playing for the first time
if global.first_time_playing {
	instance_create_layer(x,y,"Shop_obj",Obj_tutorial_menu)
}