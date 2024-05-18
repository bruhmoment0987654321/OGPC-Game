draw_set_font(F_Silver);
draw_set_color(c_red);
draw_set_halign(fa_left);

var score_string = "Score:"+ string_repeat("0", 5-string_length(string(score))) + string(score);

if global.hp > 0 && instance_exists(Obj_player) {
	if room != Rm_title && global.show_GUI {
			var string_health = "Health: "+ string(global.hp);
			var width = string_width(string_health);
			var height = string_height(string_health);
			draw_sprite_ext(Spr_pixel,0,46,46,(width*2)+6,height+2,0,c_black,0.5);
			draw_text_transformed(50,50,string_health,scale,scale,0);
		if global.bomb_amount > 0 {
			var string_ = "Bombs: " + string(global.bomb_amount);
			var width = string_width(string_);
			var height = string_height(string_);
			
			draw_set_color(#EED202);
			draw_sprite_ext(Spr_pixel,0,46,71,(width*2)+6,height+2,0,c_black,0.5);
			draw_text_transformed(50,75,string_,scale,scale,0);	
			
		}
		if global.shield > 0 {
			draw_set_color(c_blue);
			var string_ = "Shield: "+ string(global.shield);
			var width = string_width(string_);
			var height = string_height(string_);
			
			draw_sprite_ext(Spr_pixel,0,46,21,(width*2)+6,height+2,0,c_black,0.5);
			draw_text_transformed(50,25,string_,scale,scale,0);
		}
		if global.money > 0 {
			draw_set_color(#01A368);
			var string_ = "Money: "+ string(global.money);
			var width = string_width(string_);
			var height = string_height(string_);
			
			draw_sprite_ext(Spr_pixel,0,46,96,(width*2)+6,height+3,0,c_black,0.5);
			draw_text_transformed(50,100,string_,scale,scale,0);	
		}
		if global.holding_battery {
			draw_sprite(Spr_battery_icon,0,50,130);	
		}
		if room != Rm_ctrl_rm && room != Rm_shop_prehis {
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

if room == Rm_end && !global.midTransition {
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,100,"HOORRAYYY!\n Hope you had fun!\nThis is only the beta, so, press Escape\nand you can start over again!",2,2,0);
}

if global.show_timer {
	draw_set_color(c_black);
	draw_text_transformed(300,90,"Batteries: " + string(global.battery_amount),scale,scale,0);
}
if global.show_fps {
	draw_set_color(c_green);
	draw_text(500,50,"FPS: " + string(fps));	
}