// Inherit the parent event
event_inherited();

//center menu
x = cam_x + cam_width/2-x_offset;
y = cam_y + cam_height/2-y_offset;

//menu background
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,alpha);

//setting up the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < op_length; i++){
	var color = c_white;
	if(pos == i) color = c_yellow;
	draw_text_transformed_color(x+op_border,y+op_border+op_space*i,options[menu_level][i],scale,scale,0,color,color,color,color,alpha);	
}
