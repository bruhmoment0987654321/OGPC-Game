//putting font first
draw_set_font(F_Silver);
//get width and height of menu
var new_w = 0;
for(var i = 0; i < op_length;i++){
	var op_w = string_width(options[menu_level][i]);
	new_w = max(new_w,op_w);
}
height = op_border*2 + string_height(options[0][0])+(op_length-1)*op_space;
width = (new_w + op_border*2)*scale;
//menu background
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);

//setting up the text

draw_set_colour(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < op_length; i++){
	var color = c_white;
	if(pos == i) color = c_yellow;
	draw_text_transformed_color(x+op_border,y+op_border+op_space*i,options[menu_level][i],scale,scale,0,color,color,color,color,1);	
}