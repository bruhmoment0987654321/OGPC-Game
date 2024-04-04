west = place_meeting(x-Gridsize,y,Obj_spike);
east = place_meeting(x+Gridsize,y,Obj_spike);
middle = east && west;
single = !middle;

if single image_index = 0;
if east && !west image_index = 1;
if west && !east image_index = 3;
if middle image_index = 2;