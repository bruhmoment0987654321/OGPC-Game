///@param text id
function GameText(text_id){
	switch(text_id){
		//--------------------- practice shop keep dialogue -------------------------//
		case "shopkeeper0":
		Text("I'm a man of glory!");
		Text_Color(0,19,c_red,c_red,c_red,c_red);
		Text("HARHA, HARHAR!");
		Text_Float(0,14,-6,30);
		Text("...................... Sorry. Didn't mean to be rude.");
		Text_Shake(0,53);
		Text("1. . . 2. . . 3. . . Lamp oil. Rope? Bombs? You want it? It's yours, my friend. As long as you have enough rubies.");
		Text("Sorry Link, I can't give credits. Come back when you're a little, MMMMMMMMMMM richer.")
		Text("long long long long long long long long long long long. long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long");
		break;
		//--------------------- Caveman shopkeep dialogue ---------------------//
		case "shopkeeper1":
		Text("Hi!");
		Text("I am Guy.");
		Text_Color(4,7,c_lime,c_lime,c_lime,c_lime);
		Text("You want thing, Guy have thing. Just give money to Guy. Guy like money.");
		Text_Color(16,19,c_lime,c_lime,c_lime,c_lime);
		Text_Color(50,53,c_lime,c_lime,c_lime,c_lime);
		Text_Color(56,59,c_lime,c_lime,c_lime,c_lime);
		break;
		
		case "shopkeeper2":
			Text("This is the place of dinosaur.");
			Text("We live for power!");
			Text_Color(12,17,c_red,c_red,c_red,c_red);
			Text("We live...");
			Text("To live!");
			Text_Shake(3,7);
			Text("You must know how to live too. Hope you is ready for it.");
		break;
		case "shopkeeper3":
		Text("...");
		Text("What is \"battery\"?");
		Text("Maybe it is something shiny.");
		Text("If you want this \"battery\", then you maybe have to kill. The others always like shiny.")
		break;
		case "Shopkeeper1-nomoney":
		Text("Poor. Get money up. Not FUNNY up");
		Text_Float(33,38,3,20);
		break;
		
		case "Shopkeeper1-toomuch":
		Text("Sorry. Can't give you it. You have many of it. So stop.");
		break;
	}
}