//player position
player_x = x+16;
player_y = y+32;
instance_create_layer(player_x,player_y,"Player",Obj_player);	
/*camera position 
camera_set_view_size(view_camera[0],CamWidth,CamHeight);
cam_pos_x = player_x-(camera_get_view_width(view_camera[0])/2);
cam_pos_y = player_y-(camera_get_view_height(view_camera[0])/2);
camera_set_view_pos(view_camera[0],cam_pos_x,cam_pos_y);
instance_create_layer(x,y,"Player",Obj_cam);