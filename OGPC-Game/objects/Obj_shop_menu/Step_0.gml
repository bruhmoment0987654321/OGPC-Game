up = keyboard_check_pressed(global.scroll_up);
down = keyboard_check_pressed(global.scroll_down);
select = keyboard_check_pressed(global.select);
var s = id;
if(global.cantpress)||(global.cantpress_commands){
	up = 0;
	down = 0;
	select = 0;
}
//store number of options into current menu
op_length = array_length(options[menu_level]);
//moving though menu
pos += down-up;
if(pos >= op_length) pos = 0;
if(pos < 0) pos = op_length-1;

#region selecting options
if(select){
	var sml = menu_level;
	switch(menu_level){
		//main shop menu
		case 0:
			switch(pos){
				//open the options to buy
				case 0: menu_level = 1; break;
				//talk to the shopkeeper
				case 1: menu_level = 2; break;
				//go back to the level you were in
				case 2:
					global.playercant = false;
					instance_deactivate_object(self);
				break;
			}
		break;
		//buy sub menu
		case 1:
			switch(pos){
				//buy first option
				case 0:
					if(global.money < 15){
						with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
							GameText(s.poor_text_id);
						}
					}else{
						if(global.hp <= global.max_hp){
							global.money -= 15;
							global.hp += 10;
						}else{
							with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
								GameText(s.toomuch_text_id);
							}		
						}
					}
				break;
				//buy second option
				case 1: 
					if(global.money < 5){
						with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
							GameText(s.poor_text_id);
						}
					}else{
						if(global.bomb_amount <= global.bomb_max){
							global.money -= 5;
							global.bomb_amount += 1;
						}else{
							with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
								GameText(s.toomuch_text_id);
							}
						}
					}
				break;
				//buy third option
				case 2: 
					if(global.money < 10){
						with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
							GameText(s.poor_text_id);
						}
					}else{
						if(global.shield <= global.shield_max){
							global.money -= 10;
							global.shield += 20;
						}else{
							with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
								GameText(s.toomuch_text_id);
							}	
						}
					}
				break;
				//go back to the main shop menu
				case 3: menu_level = 0; break;
			}
		break;
		//talk sub menu
		case 2:
			switch(pos){
				//shopkeeper talks about first thing 
				case 0:
				with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
					GameText(s.text_id)
				}
				break;
				//shopkeeper talks 2nd thing
				case 1: 
				with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
					GameText(s.text2_id);
				}
				break;
				//shopkeeper talks about 3rd thing 
				case 2: 
				with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
					GameText(s.text3_id);
				}
				break;
				//go back to the main shop menu
				case 3: menu_level = 0;break;
			}
		break;
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion