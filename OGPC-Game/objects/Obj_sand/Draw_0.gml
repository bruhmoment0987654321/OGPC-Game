draw_self();

image_index = destroy_limit;

if(global.show_timer){
	draw_text(x-16,y-5,"timer: " + string(destroy_timer));
	draw_text(x-16,y-20,"death timer: " + string(death_timer));
	draw_text(x-16,y-30,"limit: " + string(destroy_limit));
}