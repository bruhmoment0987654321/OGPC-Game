#region animations
	//gummy
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
	
	if(hsp != 0) image_xscale = sign(hsp);
	flash--;
#endregion