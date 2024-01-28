text_id = "";
text2_id = "";
text3_id = "";
poor_text_id = "";
toomuch_text_id = "";

width = 128;
height = 168;
scale = 2;
alpha = 1;
op_border = 16;
op_space = 32;

pos = 0;
#region text for the menu
//main shop menu
options[0][0] = "Buy";
options[0][1] = "Talk";
options[0][2] = "Exit";
//buy sub menu
options[1][0] = "Health : $15";
options[1][1] = "Bombs : $5";
options[1][2] = "Shield : $10";
options[1][3] = "Back";
//talk sub menu
options[2][0] = "\"Who are you?\"";
options[2][1] = "\"What is this place?\"";
options[2][2] ="\"Did you find a battery laying around?\"";
options[2][3] = "Back";
#endregion

op_length = 0;
menu_level = 0;
if(instance_exists(Obj_gun_fx)){
	instance_destroy(Obj_gun_fx);	
}

