///@param horizontal
///@param vertical
function collision(_hor,_ver){
	if(_hor){
		//horizontal collision
		if(place_meeting(x+hsp, y,Obj_solid)){
		    while(!place_meeting(x+sign(hsp),y,Obj_solid)){
		        x+= sign(hsp);
		    }
		    hsp = 0;
		}
		x += hsp;
	}
	if(_ver){
		//vertical collision
		if(place_meeting(x, y+vsp, Obj_solid)){
		    while(!place_meeting(x,y+sign(vsp),Obj_solid)){
		        y += sign(vsp);
		    }
		    vsp = 0;
		}
		y += vsp;
	}
}