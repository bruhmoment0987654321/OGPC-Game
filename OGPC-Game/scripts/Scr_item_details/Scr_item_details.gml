function create_item(_name="N/A",_desc = "N/A",_price = 0,_sprite = Spr_pixel,_object = noone) constructor {
	name = _name;
	description = _desc;
	price = _price;
	sprite = _sprite;
	object = _object
	static toString = function(){
		return "This is a "+ name +".\n" 
			+ description  + "\n"
			+ " This costs $" + string(price) + ".\n" 
			+ "The sprite it uses is " + sprite_get_name(sprite) + ".\n"
			+ "The object is " + object_get_name(object) + ".\n";
	}
}

function create_gun(_name="N/A",_desc = "N/A",_price = 0,_sprite = Spr_pixel, _damage = 0,
_bullet_speed = 0,_fire_rate = 0, _object = noone) constructor {
	name = _name;
	description = _desc;
	price = _price;
	sprite = _sprite;
	object = _object
	
	damage = _damage;
	bullet_speed = _bullet_speed;
	fire_rate = _fire_rate;
	
	static toString = function() {
			return "This is a "+ name +".\n" 
			+ description + "\n"
			+ " This costs $" + string(price) + ".\n" 
			+ "It does "+ string(damage) 
			+ " damage,\nhas a fire rate of " + string(fire_rate) 
			+ " frames,\nand has a bullet speed of " + string(bullet_speed) +" MPH.\n" 
			+ "The sprite it uses is " + sprite_get_name(sprite) + ".\n"
			+ "The object is " + object_get_name(object) + ".\n";;
		}	
	
}

function Items() {
	shield_item = new create_item("Shield Potion",
	"Drink this to get protection from damage.",10,Spr_shield, Obj_shield);
	show_debug_message(shield_item);
	
	health_item = new create_item("Health Pickup","Take it to gain health!",15,Spr_health,Obj_health);
	show_debug_message(health_item);
	
	bomb_item = new create_item("Bomb","Destroy and kill with explosions!",5,Spr_bomb,Obj_bomb_pickup);
	show_debug_message(bomb_item);
	
	arm_gun_item = new create_gun("Arm Gun"
	,"Does normal damage, at a normal pace. Great starter gun.",
	4,Spr_arm_pickup,13,12,12,Obj_armgun_pickup);
	show_debug_message(arm_gun_item);
	
	cannon_item = new create_gun("Cannon",
	"Does BIG damage, at a slow pace. Crazy how you're holding one though.",
	20,Spr_cannon_pickup,30,20,30,Obj_cannon_pickup);
	show_debug_message(cannon_item);
	
	shuriken_item = new create_gun("Shuriken",
	"This does itty bitty damage, but you can throw a lot. Makes you a silly little ninja!",
	5,Spr_shuriken,8,19,10,Obj_shuriken_pickup);
	show_debug_message(shuriken_item);
	
	three_gun_item = new create_gun("Three Gun",
	"Three guns. One on top of another! A burst weapon, decent firing rate, and does pretty good damage.",
	12,Spr_three_gun_pickup,11,10,30,Obj_threegun_pickup);
	show_debug_message(three_gun_item);
	
	guitar_gun_item = new create_gun("Guitar Gun",
	"A sick guitar that shoot shockwaves! So radical! Does some gnarly damage but you gotta hit your shots!",
	15,Spr_gutargun_pickup,25,10,30,Obj_guitargun_pickup);
	show_debug_message(guitar_gun_item);
	
	grenade_launcher_item = new create_gun("Grenade Launcher",
	"A bomb throwing gun! Isn't that soooo original? Slow to shoot, but packs a bomb at every punch",
	25,Spr_grenade_pickup,100,5,60,Obj_grenade_pickup);
	show_debug_message(grenade_launcher_item);
}