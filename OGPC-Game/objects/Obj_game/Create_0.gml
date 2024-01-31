level_completed = false;
create_end_level = true;
//controls
global.shoot_up = vk_up;
global.shoot_down = vk_down;
global.shoot_left = vk_left;
global.shoot_right = vk_right;
global.up = ord("W");
global.down = ord("S");
global.left = ord("A");
global.right = ord("D");
global.jump = vk_space;
global.action = ord("Q");
global.bomb_place = ord("E");
global.select = vk_space;
global.scroll_up = vk_up;
global.scroll_down = vk_down;
global.console = 192; // ~ key

//money
global.money = 0;
//bomb variables
global.bomb_amount = 0;
global.bomb_max = 10;
//shield
global.shield = 0;
global.shield_max = 100;
//health
global.max_hp = 100;
global.hp = global.max_hp;
//gun held
current_weapon = noone;
//main objective
global.battery = 0;
//debug stuff
global.show_hitboxes = false;
global.show_invis = false;
global.show_timer = false;
global.show_fps = false;
//can't press any buttons
global.cantpress = false;
global.cantpress_commands = false;
global.playercant = false;
scale = 2;

window_set_caption("Project: Time?");
randomize();
