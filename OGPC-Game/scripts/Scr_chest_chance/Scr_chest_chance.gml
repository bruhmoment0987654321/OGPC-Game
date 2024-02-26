///@param chance%
///@param object
function Chest_chance(_chance,_obj){
	if(Chance(_chance)){
		instance_create_depth(x,y-16,depth-1,_obj); item_count++;
	}
}