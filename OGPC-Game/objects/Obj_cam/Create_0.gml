cam = view_camera[0];
global.CamX = camera_get_view_x(cam);
global.CamY = camera_get_view_y(cam);
camera_set_view_size(view_camera[0],CamWidth,CamHeight);
follow = Obj_player;
camera_offset_x = 0;
camera_offset_y = -25;
cam_spd = 7; // 1 is the maximum and the fastest. the higher the n-number, the longer it takes for the camera to reach the object
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;
xTo = xstart;
yTo = ystart;
angleTo = image_angle;
shake_length = 0;
shake_magnitude = 0;
shake_angle = 0;
shake_remain = 0;
buff = 0;

aim_x = 0;
aim_y = 0;
aim_amount = 2;