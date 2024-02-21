enum CHESTS {
	ITEMS = Obj_item_chest,
	GUNS = Obj_gun_chest,
}
gun_chance = 0.2;
item_chance = 0.5;

if global.battery_amount == global.round_difficulty_increase {
	gun_chance = 0.2*global.round_counter;
	item_chance = 0.3*global.round_counter;
}

rand_chest = choose(CHESTS.GUNS,CHESTS.ITEMS);
switch(rand_chest){
	case CHESTS.ITEMS:
		if(Chance(0.5)){
			instance_create_layer(x+16,y+32,"Items",CHESTS.ITEMS);
		}
	break;
	case CHESTS.GUNS:
		if(Chance(0.2)){
			instance_create_layer(x+16,y+32,"Items",CHESTS.GUNS);
		}
	break;
}
instance_destroy();


