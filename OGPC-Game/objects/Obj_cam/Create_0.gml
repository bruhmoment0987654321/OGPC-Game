cam = view_camera[0];
follow = Obj_player;
camera_offset_x = 0;
camera_offset_y = -room_height/11;
cam_spd = 30; // 1 is the maximum and the fastest. the higher the nnumber, the longer it takes for the camera to reach the object
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;