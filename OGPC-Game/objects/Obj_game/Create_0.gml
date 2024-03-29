level_completed = false;
create_end_level = true;
//when opening the game for the first time
global.first_time_playing = true;
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
global.pause_button = vk_escape;

//game state 
global.game_state = GAME_STATE.RUNNING;

//money
global.money = 0;
//bomb variables
global.bomb_amount = 1;
global.bomb_max = 10; //the limit of bombs you can have
global.max_bombs = false; //the check if the the bombs are at their limit to not get anymore
//shield
global.shield = 0;
global.shield_max = 100;
global.max_shield = false;//the check if the the shield is at their limit to not get anymore
//health
global.max_hp = 100;
global.hp = global.max_hp;
global.max_health = true;//the check if the the health is at it's limit to not get anymore
//gun held
current_weapon = noone;
current_pickup = noone;
//main objective
global.battery_amount = 0;
global.holding_battery = false;
global.round_difficulty_increase = 5;
global.round_counter = 1;
//debug stuff
global.show_hitboxes = false;
global.show_invis = false;
global.show_timer = false;
global.show_fps = false;
//can't press any buttons
global.cantpress = false;
global.cantpress_commands = false;
global.playercant = false;
//show GUI 
global.show_GUI = false;
//being able to pause the game at certain situations
global.pauseable = true;
//gun variables
global.take_the_weapon = false;
scale = 2;

window_set_caption("Project: Time?");
randomize();
