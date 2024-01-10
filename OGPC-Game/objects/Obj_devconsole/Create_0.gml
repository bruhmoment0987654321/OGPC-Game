global.enable = false;
text = "";
text_def = ">. ";
text_[0] = "";
text_currentline = text_def;
erase = -1;
enable = false;
//line cursor
cursor = "_";
cursor_delay = 15;
alarm[0] = cursor_delay;

font = F_Silver;
wsize = window_get_width();
hsize = window_get_height()/2;

text_backgroundColor = c_black;
text_backgroundAlpha = 0.6;
text_primaryColor = c_white;
text_primaryAlpha = 0.9;

text_lineColor = c_black;
text_lineAlpha = 1;
text_lineBackground = c_white;