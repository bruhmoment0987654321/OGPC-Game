if instance_exists(follow){
	xTo = follow.x+camera_offset_x;
	yTo = follow.y+camera_offset_y;
	angleTo = follow.image_angle;
}

//follow the target at a certain speed
x += (xTo - x)/cam_spd+aim_x*aim_amount;//aim_amount is the influence
y += (yTo - y)/cam_spd+aim_y*aim_amount;
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
global.CamX = x-view_w_half;
global.CamY = y-view_h_half;
camera_set_view_pos(cam,global.CamX,global.CamY);
camera_set_view_angle(cam,image_angle);
#region background 
	var _layer = layer_get_id("Background")
	layer_x(_layer,global.CamX*0.65);
	layer_y(_layer,global.CamY*0.65);
#endregion