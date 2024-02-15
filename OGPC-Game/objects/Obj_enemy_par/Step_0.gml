if(global.hp <= 0){
	state = "norm";	
}

#region animations
	//gummy
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
	if(variable_instance_exists(self,"hsp")){
		if(hsp != 0) image_xscale = sign(hsp);
	}
	flash--;
#endregion