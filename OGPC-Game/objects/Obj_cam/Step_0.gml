if global.game_state == GAME_STATE.PAUSED {
	return;	
}

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
if !global.midTransition {
	x += random_range(-shake_remain,shake_remain);
	y += random_range(-shake_remain,shake_remain);
	image_angle += random_range(-shake_angle,shake_angle);
	shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
	shake_angle = max(0,shake_angle-((1/shake_length)*shake_magnitude));
}

//updating position of camera
global.CamX = x-view_w_half;
global.CamY = y-view_h_half;

camera_set_view_pos(cam,global.CamX,global.CamY);
camera_set_view_angle(cam,image_angle);

#region transition
	if (layer_sequence_exists("transition",global.sequenceLayer)){
		layer_sequence_x(global.sequenceLayer,global.CamX);
		layer_sequence_y(global.sequenceLayer,global.CamY);
	}
#endregion
#region background
	var _layer1 = layer_get_id("Background");
	layer_x(_layer1,(global.CamX*0.1)+cloud_move_x);
	layer_y(_layer1,global.CamY*0.1);
	cloud_move_x += 0.1;
	
	var _layer2 = layer_get_id("Background2");
	layer_x(_layer2,global.CamX*0.15);
	layer_y(_layer2,global.CamY*0.15);
	
	var _layer3 = layer_get_id("Background3");
	layer_x(_layer3,global.CamX*0.2);
	layer_y(_layer3,global.CamY*0.2);
	
	var _layer4 = layer_get_id("Background4")
	layer_x(_layer4,global.CamX*0.25);
	layer_y(_layer4,global.CamY*0.25);
#endregion