///@param chance%
///@param object
function Chest_chance(_chance,_obj){
	if(Chance(_chance)){
		instance_create_layer(x,y-16,"Items",_obj); item_count++;
	}
}