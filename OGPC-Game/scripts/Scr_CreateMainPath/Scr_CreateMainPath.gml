// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateMainPath(){
	//select starting room from the top row 
	var currentX = irandom(xSections-1); //initialize starting x
	var currentY = 0;					 //initialize starting y
	
	var newDir = 0;						 //keep track on which direction to move
	sections[currentX][currentY] = 1;	 //start with room type exit left to right
	
	while currentY < ySections { //if the current y position of the path goes below 4 (path usually goes down)
		if(newDir == 0) newDir = choose(1,1,2,2,3); // 1 is left, 2 is right, 3 is down
		
		if newDir == 1 { //move left
			
			if(currentX > 0){
				sections[--currentX][currentY] = 1; // set room type to entrance left and right
				newDir = choose(1,1,1,3);
			}else{
				
				//cant move left, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					
					sections[currentX][currentY] = 2;  //type 2 makes it so that there is an exit in floor
					sections[currentX][++currentY] = 3;//type 3 makes it so that there is an entrance in the ceiling
					newDir = choose(2,2,3); //has less probablility going down when path reaches left edge
					
				}else ++currentY; //exit out of loop
				
			}
			
		}else if newDir == 2 {  //move right if it doesnt go left
			
			if(currentX < xSections-1){
				sections[++currentX][currentY] = 1; 
				newDir = newDir = choose(2,2,2,3);
			}else{
				
				//cant move right, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					sections[currentX][currentY] = 2;
					sections[currentX][++currentY] = 3;
					newDir = choose(1,1,3); //has less probablility going down when path reaches right edge
				}else ++currentY;
				
			}
			
		}else if newDir == 3 { //move down
			
			if currentY < ySections-1 {
				
				sections[currentX][currentY] = 2;
				sections[currentX][++currentY] = 3;
				newDir = choose(2,2,2,3);
				if (currentX == xSections-1) newDir = choose(1,1,3); 
				else if(currentX == 0) newDir = choose(2,2,3);  
				
			}else++currentY;
			
		}
	}
	
	
}