draw_sprite_ext(Spr_wave,timer/6.5,x,y-8,1,1,0,image_blend,1);

var i = 0;
repeat(image_number){
	draw_sprite_ext(sprite_index,i,x,y-i,3,3,image_angle,image_blend,image_alpha);
	i++;
}

