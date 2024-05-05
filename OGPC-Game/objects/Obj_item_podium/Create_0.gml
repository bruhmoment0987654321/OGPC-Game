//randomization for items
picked_item = ChooseAnItem();
item = picked_item.object;
item_name = picked_item.name;
sprite = picked_item.sprite;
price = picked_item.price;
//checking if things are bought
bought = false;
//placement and other vars 
x_offset = 24;
alpha = 0;

timer = 0;
item_timer = 0;