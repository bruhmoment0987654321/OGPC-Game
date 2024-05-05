color = c_black;
draw_self();

draw_set_halign(fa_center);
draw_text_color(x,y-x_offset - 60, item_name,color,color,color,color,alpha);
draw_text_color(x,y-x_offset - 40,"$"+string(price),color,color,color,color,alpha);

if(!bought)&&(point_distance(x,y,Obj_player.x,Obj_player.y) <= 25)&&(Obj_player.state != "dead"){
	timer++;
	var y_move = sin(timer*0.1)*3;
	draw_sprite(Spr_weapoon_iconpu,0,x,y-48+y_move);
	alpha += 0.1;
}else{
	alpha -= 0.1;	
}

if !bought {
	item_timer++;
	var y_move = sin(item_timer*0.1)*3;
	draw_sprite(sprite,image_index,x,y-x_offset+y_move);
}
alpha = clamp(alpha,0,1);