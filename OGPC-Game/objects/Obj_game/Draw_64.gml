draw_set_font(F_Silver);
draw_set_color(c_red);
draw_set_halign(fa_left);

var score_string = "Score:"+ string_repeat("0", 5-string_length(string(score))) + string(score);

if global.hp > 0 && instance_exists(Obj_player) {
	if room != Rm_title && global.show_GUI {
		draw_text_transformed(50,50,"Health: "+ string(global.hp),scale,scale,0);
		if global.bomb_amount > 0 {
			draw_set_color(#EED202);
			draw_text_transformed(50,70,"Bombs: " + string(global.bomb_amount),scale,scale,0);	
		}
		if global.shield > 0 {
			draw_set_color(c_blue);
			draw_text_transformed(50,20,"Shield: "+ string(global.shield),scale,scale,0);
		}
		if global.money > 0 {
			draw_set_color(#01A368);
			draw_text_transformed(50,90,"Money: "+ string(global.money),scale,scale,0);	
		}
		if global.holding_battery {
			draw_sprite(Spr_battery_icon,0,50,130);	
		}
		if room != Rm_ctrl_rm {
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text_transformed((camera_get_view_width(view_camera[0])/2),330,score_string,scale*score_scale,scale*score_scale,0);
			if score > prev_score {
				alarm[0] = 1;
			}
			if score_scale >= 1 {
				score_scale -= random_range(0.1,0.2);	
			}
		}
		draw_set_halign(fa_left);
	}
	
}

if room == Rm_title {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text_transformed(500,50,"Hi-Score",scale,scale,0);
	draw_highscore(440,100,560,300);	
	draw_set_halign(fa_left);
}

if global.show_timer {
	draw_set_color(c_black);
	draw_text_transformed(300,90,"Batteries: " + string(global.battery_amount),scale,scale,0);
}
if global.show_fps {
	draw_set_color(c_green);
	draw_text(500,50,"FPS: " + string(fps));	
}