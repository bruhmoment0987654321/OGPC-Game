text_id = "";
poor_text_id = "";
toomuch_text_id = "";
width = 128;
height = 168;
scale = 2;
alpha = 1;
op_border = 16;
op_space = 32;

pos = 0;
change_dialouge = irandom_range(0,2);
change_dialouge2 = irandom_range(0,2);
change_dialouge3 = irandom_range(0,2);

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
if(change_dialouge == 0) options[2][0] = "\"Who are you?\"";
if(change_dialouge == 1) options[2][0] = "\"Hi :).\"";
if(change_dialouge == 2) options[2][0] = "\"What year is it?\"";

if(change_dialouge2 == 0) options[2][1] = "\"What is this place?\"";
if(change_dialouge2 == 1) options[2][1] = "\"Tell me something cool.\"";
if(change_dialouge2 == 2) options[2][1] ="\"Did you find a battery laying around?\"";

if(change_dialouge3 == 0) options[2][2] = "\"Why are you here?\"";
if(change_dialouge3 == 1) options[2][2] = "\"Give me a tip or something.\"";
if(change_dialouge3 == 2) options[2][2] = "\"...\""
options[2][3] = "Back";
#endregion

op_length = 0;
menu_level = 0;

