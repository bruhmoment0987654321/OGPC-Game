draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(x+width/2,y+height/2,text,scale,scale,0);

draw_text_transformed(x+width/2,y-10,"Type Name Here. Must be 15 characters or less",1,1,0);

