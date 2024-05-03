global.cantpress = false;
with(Obj_shop_menu){
	alpha = 1;	
}
with(Obj_boss1_shop_menu){
	alpha = 1;	
}
if instance_exists(Obj_boss_shopkeeper) && !instance_exists(Obj_boss1_shop_menu) && !menu_exited{
	instance_create_layer(x,y,"Shop_obj",Obj_boss1_shop_menu);
}
show_debug_message("OPEN THE MENU!");
