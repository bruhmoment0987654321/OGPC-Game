exit_room = keyboard_check_pressed(vk_escape);
if exit_room {
	Start_over();
	room_goto(Rm_title);
}