event_inherited();
//putting font first
draw_sprite_ext(Spr_screencover,0,cam_x,cam_y,1,1,0,image_blend,0.5);

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2-(width/2);
y = camera_get_view_y(view_camera[0])+ camera_get_view_width(view_camera[0])/3-height/2;

//menu background
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,alpha);

//setting up the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < op_length; i++){
	var color = c_white;
	if(pos == i) color = c_yellow;
	draw_text_transformed_color(x+op_border,y+op_border+op_space*i,options[menu_level][i],scale,scale,0,color,color,color,color,1);	
}