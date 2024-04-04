north = place_meeting(x,y+Gridsize,Obj_ladder);
south = place_meeting(x,y-1,Obj_ladder);
middle = north && south;
single = !middle;

if single image_index = 0;
if north && !south image_index = 1;
if middle image_index = 2;
if south && !north image_index = 3;