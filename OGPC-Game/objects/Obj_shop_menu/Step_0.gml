if global.game_state == GAME_STATE.PAUSED {
	return;	
}

event_inherited();
#region have options change during runtime
options[1][0] = "Health : $"+ string(first_item_cost+global.first_item_added_cost);
options[1][1] = "Bombs : $"+ string(second_item_cost+global.second_item_added_cost);
options[1][2] = "Shield : $"+string(third_item_cost+global.third_item_added_cost);
#endregion

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
					if(global.money < first_item_cost+global.first_item_added_cost){
						with(instance_create_depth(x,y,-999,Obj_textbox)){
							GameText(other.s.poor_text_id);
						}
					}else{
						if(global.hp < global.max_hp){
							global.money -= (first_item_cost+global.first_item_added_cost);
							global.first_item_added_cost++;
							global.hp += 10;
						}else{
							with(instance_create_depth(x,y,-999,Obj_textbox)){
								GameText(other.s.toomuch_text_id);
							}		
						}
					}
				break;
				//buy second option
				case 1: 
					if(global.money < second_item_cost+global.second_item_added_cost){
						with(instance_create_depth(x,y,-999,Obj_textbox)){
							GameText(other.s.poor_text_id);
						}
					}else{
						if(global.bomb_amount < global.bomb_max){
							global.money -= (second_item_cost+global.second_item_added_cost);
							global.first_item_added_cost++;
							global.bomb_amount += 1;
						}else{
							with(instance_create_depth(x,y,-999,Obj_textbox)){
								GameText(other.s.toomuch_text_id);
							}
						}
					}
				break;
				//buy third option
				case 2: 
					if(global.money < third_item_cost+global.third_item_added_cost){
						with(instance_create_depth(x,y,-999,Obj_textbox)){
							GameText(other.s.poor_text_id);
						}
					}else{
						if(global.shield < global.shield_max){
							global.money -= (third_item_cost+global.third_item_added_cost);
							global.third_item_added_cost++;
							global.shield += 10;
						}else{
							with(instance_create_depth(x,y,-999,Obj_textbox)){
								GameText(other.s.toomuch_text_id);
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
				with(instance_create_depth(x,y,-999,Obj_textbox)){
					GameText(other.s.text_id)
				}
				break;
				//shopkeeper talks 2nd thing
				case 1: 
				with(instance_create_depth(x,y,-999,Obj_textbox)){
					GameText(other.s.text2_id);
				}
				break;
				//shopkeeper talks about 3rd thing 
				case 2: 
				with(instance_create_depth(x,y,-999,Obj_textbox)){
					GameText(other.s.text3_id);
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