if(up)&&(!pressed){
		global.playercant = true;
		pressed = true;
		if(!instance_exists(Obj_shop_menu)){
			with(instance_create_layer(x,y,"FX",Obj_shop_menu)){
				if(room == Rm_level1){
					text_id = "shopkeeper1";
					text2_id = "shopkeeper2";
					text3_id = "shopkeeper3";
					poor_text_id = "Shopkeeper1-nomoney";
					toomuch_text_id = "Shopkeeper1-toomuch";	
				}
			}
		}else{
			instance_activate_object(Obj_shop_menu);	
		}
}