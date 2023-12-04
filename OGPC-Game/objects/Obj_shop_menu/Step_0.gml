up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
select = keyboard_check_pressed(vk_enter);
var s = id
if(global.cantpress){
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
				case 2: room_goto(Rm_level1); break;
			}
		break;
		//buy sub menu
		case 1:
			switch(pos){
				//buy first option
				case 0: break;
				//buy second option
				case 1: break;
				//buy third option
				case 2: break;
				//go back to the main shop menu
				case 3: menu_level = 0; break;
			}
		break;
		//talk sub menu
		case 2:
			switch(pos){
				//shopkeeper talks about who he is 
				case 0:
				with(instance_create_depth(x,y,-999,Obj_shop_textbox)){
					GameText(s.text_id)
				}
				break;
				//shopkeeper talks about where you are
				case 1: break;
				//shopkeeper talks about why he works at this place
				case 2: break;
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