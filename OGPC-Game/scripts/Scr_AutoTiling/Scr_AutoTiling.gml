// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AutoTiling(){
	var index,north_tile,south_tile,west_tile,east_tile,north_east_tile,north_west_tile,south_east_tile,south_west_tile;

	size = Gridsize;

	//Directional Check, including corners, returns Boolean
	north_tile = place_meeting(x,y-size,object_index);
	south_tile = place_meeting(x,y+size,object_index);
	west_tile = place_meeting(x-size,y,object_index);
	east_tile = place_meeting(x+size,y,object_index);
	north_west_tile = place_meeting(x-size,y-size,object_index) && west_tile && north_tile;
	north_east_tile = place_meeting(x+size,y-size,object_index) && north_tile && east_tile;
	south_west_tile = place_meeting(x-size,y+size,object_index) && south_tile && west_tile;
	south_east_tile = place_meeting(x+size,y+size,object_index) && south_tile && east_tile;

	//8 bit Bitmasking calculation using Directional check booleans values
	index = north_west_tile + 2*north_tile + 4*north_east_tile + 8*west_tile + 16*east_tile + 32*south_west_tile + 64*south_tile + 128*south_east_tile;

	// take the previously calculated value and find the relevant value in the data structure to remove redundancies
	index = ds_map_find_value(map,string(index));

	return index;
}