exit_room = keyboard_check_pressed(vk_escape);

secret_timer--;

if exit_room {
	room_goto(Rm_title);
}