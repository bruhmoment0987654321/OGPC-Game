///@desc made my u/ShadeX91. Thank you
//This checks if the input is in between 2 numbers
///@param input
///@param lowest
///@param highest
function In_between(_input,_left,_right){
	var lowest = min(_left,_right);
	var highest = max(_left,_right);
	
	return (lowest < _input && _input < highest);
}