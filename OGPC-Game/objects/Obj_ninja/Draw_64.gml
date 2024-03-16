// Inherit the parent event
event_inherited();

if global.show_GUI {
	Draw_circular_bar(cooldown_x,cooldown_y,dash_timer,
	dashcooldown,cooldown_color,cooldown_radius,
	cooldown_alpha,cooldown_width);
	draw_sprite(Spr_dash_icon,0,cooldown_x,cooldown_y);
}