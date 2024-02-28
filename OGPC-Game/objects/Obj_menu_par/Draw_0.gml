cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);
draw_set_font(F_Silver);
//get width and height of menu
var new_w = 0;
for(var i = 0; i < op_length;i++){
	var op_w = string_width(options[menu_level][i]);
	new_w = max(new_w,op_w);
}
height = op_border*2 + string_height(options[0][0])+(op_length-1)*op_space;
width = (new_w + op_border*2)*scale;

//setting up the text
draw_set_colour(c_white);