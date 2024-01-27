// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Reverse_string(_string){
	var _output = "";
	for(var i = string_length(_string); i>0;i--){
		_output += string_char_at(_string,i);	
	}
	return _output;
}