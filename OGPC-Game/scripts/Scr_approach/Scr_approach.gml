///@desc Approach(start,end,shift)
///@param current
///@param target
///@param amount
function Approach(_current,_target,_amount){
	if(_current < _target){
		return min(_current+_amount,_target);
	}else{
		return max(_current-_amount,_target);	
	}
}