function hard_mode(_bool){
	var Bool = bool(_bool);
	
	if(Bool != undefined){
		global.shield = 0; global.hp = 1;
	}else Log("Boolean not recongnized. Did you use 0 and 1?");	
}