if Obj_player.state != "dead" {
	draw_healthbar(100,300,550,312,map_value(hp,0,hp_max,0,100),c_black,c_red,c_red,0,false,true);
}