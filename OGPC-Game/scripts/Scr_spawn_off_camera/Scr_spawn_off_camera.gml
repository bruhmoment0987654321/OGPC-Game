function Spawn_off_camera(_obj){
	var _x,_y;
	
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	
	var pad = 64;
	
	var cam_width = camera_get_view_width(view_camera[0]);
	var cam_height = camera_get_view_height(view_camera[0]);
	
	var rand_x = choose(random_range(cam_x-pad*2,cam_x-pad),random_range(cam_x+cam_width+pad,cam_x+cam_width+pad*2));
	var rand_y = choose(random_range(cam_y-pad*2,cam_y-pad),random_range(cam_y+cam_height+pad,cam_y+cam_height+pad*2));
	_x = rand_x;
	_y = rand_y;
	
	instance_create_layer(_x,_y,"Enemy",_obj);
}