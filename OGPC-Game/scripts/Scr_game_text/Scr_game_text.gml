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
		Text("Hello");
		Text_Shake(0,10);
		
		break;
		
		case "Shopkeeper1-nomoney":
		Text("Poor. Get your money up. Not your FUNNY up");
		Text_Color(15,20,c_lime,c_lime,c_lime,c_lime);
		Text_Float(33,38,3,20);
		break;
	}
}