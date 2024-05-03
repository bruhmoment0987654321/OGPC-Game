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
		case "lets_start_learning":
			Text("Welp, lets get going then...");
		break;
		case "play_now":
			Text("Good luck. You'll need it.");
			Text("HARHA, HARHAR!");
			Text_Float(0,14,-6,10);
		break;
		
		//you meet the shopkeeper before the boss starts
		//------------------------------------boss 1-------------------------------------//
		case "beforeboss1 - 1":
			Text("Hey. What is the up?");
		break;
		//Why are you here?
		case "beforeboss1 - 2":
			Text("Well. me want the mon mon. So me be here so men can give money to me.");
			Text("Men fight, they say \"RAHHARAHRAH!\", and come back. Money always come to me.");
			Text_Shake(21,32);
			Text_Color(21,32,c_red,c_red,c_red,c_red);
		break;
		//what is out there?
		case "beforeboss1 - 3":
			Text("Few things me must say. Me like you and me do not want you to die.");
			Text("Do not stand still. The beast can smell scared bunny from long away. So he can smell you too");
			Text("Next, you can not go too close. The thing can eat you for early meal.");
			Text("Last. Kill it. Do not stop to think.");
			Text("Now you shall go KILL THE BEAST!");
			Text_Shake(17,32);
		break;
		//Do I haaaaave to fight?
		case "beforeboss1 - 4":
			Text("YOU SAID YOU WANT SHINY!");
			Text_Shake(0,24);
			Text("YOU GET IT FROM BEAST!");
			Text_Shake(0,22);
			Text("NOW LEAVE AND GO! FIGHT TO SAVE AND GET SHINY!!");
			Text_Shake(0,47)
		break;
		case "beforeboss1 - 5":
			Text("Ok. Good bye friend. Hope you make it not dead!");
		break;
	}
}