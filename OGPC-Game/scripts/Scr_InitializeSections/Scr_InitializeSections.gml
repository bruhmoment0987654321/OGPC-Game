//0 section
function InitializeZeroSection(){
	ds_list_add(sectionZero, 
	"11111111111111111111111111111111111111111111111111111111111111111111111111111111");
	ds_list_add(sectionZero,
	"11111111111000000001100000000110000000011000000001100000000110000000011111111111");
	ds_list_add(sectionZero,
	"11111111111000000031100000113110000100311000101001100100100110100001011111111111");
	ds_list_add(sectionZero,
	"111111111111000000111100000011110000001111000000113300cc003333001100331111111111");
	
}
//shop right section
function InitializeShopRSection(){
	ds_list_add(sectionShopRight,
	"1111111111000000=00100000000010000000001000000000100000D000100000000011111111111");
}
//this is for 1 section
function InitializeLRSection(){
	ds_list_add(sectionLeftRight,
	"1111111111000000000000000B000000000000000000*TX0000011110E00E0111111111111111111");
	ds_list_add(sectionLeftRight,
	"111111111100000000000B001100000000*000000X01111000E000000E0011111111111111111111");
	ds_list_add(sectionLeftRight,
	"1111111111000000000000000100000B000*0000X0111100000000000E0011111111111111111111");
	ds_list_add(sectionLeftRight,
	"1111111111000000000000000B0000000X0*000000000T000000c1110E0011111111111111111111");
}
//this is for 2 section
function InitializeLBRSection(){
	ds_list_add(sectionLeftBottomRight,
	"11111111110000HH00000000HH000000B0HH00000000HH0000*X00HH00001E00HH00E01110HH0011");
	ds_list_add(sectionLeftBottomRight,
	"1111111111000000000000001000000010H0000000H0H0010000H0H10H0000H0HH0H0011H0HH0H01");
	ds_list_add(sectionLeftBottomRight,
	"11111111110000HH00000*0H00H000000H00H000000H00H0000B0H00H0X0000H00H0001110HH0111");
	ds_list_add(sectionLeftBottomRight,
	"111111111100000H000000000H000000000H00000000BH0E0000000H01X00*000H000011100H0111");
	ds_list_add(sectionLeftBottomRight,
	"11111111110000H000000000H000000000H000000000H00B00EX00H000001000H000*01110H00111");
}
//this is for 3 section
function InitializeLTRSection(){
	//ds_list_add(sectionLeftTopRight,
	//"0000*00000000000000000B0000000000cTTX00000011100000011111100E11111111E1111111111");
	//ds_list_add(sectionLeftTopRight,
	//"000000000000000000000000000000000*0T000c0B0111X001000000000100111111111111111111");
	//ds_list_add(sectionLeftTopRight,
	//"0000000000000000*00000B0000000000cTTX00000011100000E000000E001111111101111111111");
	ds_list_add(sectionLeftTopRight,
	"0000000000000000000011W111W11131100001131111W111W100001111000000000000113300cc00");
}