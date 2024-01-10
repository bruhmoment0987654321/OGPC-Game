///@desc 
function Log(_print){
	if(!instance_exists(Obj_devconsole)) exit;
	
	with(Obj_devconsole){
		//log the text, and scroll text array
		for (var i = array_length(text_)-1;i>=0;i--){
			text_[i+1] = text_[i];
		}
		text_[0] = string(_print);
		text_currentline = text_def;
		
	}
}