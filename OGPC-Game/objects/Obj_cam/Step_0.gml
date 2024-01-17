if(instance_exists(follow)){
	xTo = follow.x+camera_offset_x;
	yTo = follow.y+camera_offset_y;
}

//follow the target at a certain speed
x += (xTo - x)/cam_spd;
y += (yTo - y)/cam_spd;

//keep camera inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);