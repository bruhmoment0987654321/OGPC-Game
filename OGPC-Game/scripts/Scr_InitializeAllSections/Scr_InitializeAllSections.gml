// initialize our lists for the different sections we have
function InitializeAllSections(){
	sectionLeftRight = ds_list_create();
	sectionLeftTopRight = ds_list_create();
	sectionLeftBottomRight = ds_list_create();
	sectionZero = ds_list_create();
	sectionShopRight = ds_list_create();
	
	//store strings for the chunks
	InitializeLBRSection();
	InitializeLRSection();
	InitializeLTRSection();
	InitializeZeroSection();
	InitializeShopRSection();
}