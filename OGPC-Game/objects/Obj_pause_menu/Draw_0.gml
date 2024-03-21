// Inherit the parent event
event_inherited();
draw_sprite_ext(Spr_screencover,0,cam_x,cam_y,1,1,0,image_blend,0.5);
//center menu
x = cam_x + cam_width/2+x_offset;
y = cam_y + cam_height/2-y_offset;

//setting up the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < op_length; i++){
	var color = c_white;
	if(pos == i) color = c_yellow;
	draw_text_transformed_color(x+op_border,y+op_border+op_space*i,options[menu_level][i],scale,scale,0,color,color,color,color,1);	
}