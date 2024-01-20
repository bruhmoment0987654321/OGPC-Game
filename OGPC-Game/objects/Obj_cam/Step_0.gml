if(instance_exists(follow)){
	xTo = follow.x+camera_offset_x;
	yTo = follow.y+camera_offset_y;
	angleTo = follow.image_angle;
}

//follow the target at a certain speed
x += (xTo - x)/cam_spd;
y += (yTo - y)/cam_spd;
image_angle = (angleTo-image_angle)/cam_spd;

//keep camera inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
image_angle += random_range(-shake_angle,shake_angle);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
shake_angle = max(0,shake_angle-((1/shake_length)*shake_magnitude));
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
camera_set_view_angle(cam,image_angle);