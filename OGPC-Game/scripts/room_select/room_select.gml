// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_select(_room){
	var Room = asset_get_index(_room);
	room_goto(Room);
}