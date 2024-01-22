// Inherit the parent event
event_inherited();
hp = 100;
tounge = instance_create_layer(x-1,y,"Enemy",Obj_flytrap_tongue);
tounge_spd = 0.5;
pull = false;
state = "norm";
damage = 30;
with(tounge){
	parent = other.id;
	image_yscale = other.tounge_length;	
}

