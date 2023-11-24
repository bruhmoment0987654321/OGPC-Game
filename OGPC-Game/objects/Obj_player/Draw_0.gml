var interval = 12;
if((alarm[0] % interval)<= interval/2){
	draw_self();
}else{
	shader_set(Sh_White);
	draw_self();
	shader_reset();
}
