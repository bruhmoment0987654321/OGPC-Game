draw_set_color(c_red);
draw_text_transformed(40,25,"Esc to get outta here!",scale,scale,0);

draw_set_color(c_black);
draw_text_transformed(40,60,"A & D: Move Left & right\nSpace: Jump\nArrow Keys: Aim gun\nQ: Action\nE: Deploy bomb",scale,scale,0);
draw_text_transformed(250,25,"W & S: Move up & down(on ladders)\nUp & Down Keys: Navigate through menus\nSpace: Select (in menus)",scale,scale,0);

if secret_timer <= 0 {
	draw_set_color(c_purple);
	draw_text_transformed(250,150,"Shhhh...\nHere's the button for the console:\nThe ~ key\nYou're welcome ;)",scale,scale,0);	
}