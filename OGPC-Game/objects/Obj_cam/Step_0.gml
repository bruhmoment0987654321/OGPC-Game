if(instance_exists(follow)){
	xTo = follow.x+camera_offset_x;
	yTo = follow.y+camera_offset_y;
}

x += (xTo - x)/cam_spd;
y += (yTo - y)/cam_spd;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);