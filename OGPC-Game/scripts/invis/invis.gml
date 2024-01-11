function invis(_bool){
	var Bool = bool(_bool);
	
	if(Bool != -1) global.show_invis = true;
	else Log("Boolean not recongnized. Did you use 0 and 1?");	
}