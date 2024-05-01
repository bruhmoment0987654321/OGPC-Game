function player_collision(){
	var hcollide;
	hcollide = instance_place(x+hsp,y,Obj_solid);
	
	if hcollide != noone {
		if !hcollide.semi {
			//horizontal collision
			if(place_meeting(x+hsp, y,Obj_solid)){
				while(!place_meeting(x+sign(hsp),y,Obj_solid)){
				    x+= sign(hsp);
				}
				hsp = 0;
			}
		}
	}
	
	x += hsp;
	
	var vcollide;
	vcollide = instance_place(x,y+vsp,Obj_solid);
	
	//vertical collision
	if vcollide != noone {
		if !vcollide.semi{
			while(!place_meeting(x,y+sign(vsp),Obj_solid)){
			    y += sign(vsp);
			}
			vsp = 0;
		}
		
		if vcollide.semi && bbox_bottom <= vcollide.bbox_top {
			if vsp > 0 {
				while(!place_meeting(x,y+sign(vsp),vcollide.id)){
					y += sign(vsp);
				}
				vsp = 0;	
			}
		}
	}
	y += vsp;
}