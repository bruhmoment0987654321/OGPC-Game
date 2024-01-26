function CreateMainPath(){
	//select starting room from the top row 
	var currentX = irandom(xSections-1); //initialize starting x
	var currentY = 0;					 //initialize starting y
	
	var newDir = 0;						 //keep track on which direction to move
	sections[currentX][currentY] = Left;	 //start with room type exit left to right
	
	while currentY < ySections { //if the current y position of the path goes below 4 (path usually goes down)
		if(newDir == 0) newDir = choose(Left,Left,Right,Right,Down); 
		
		if newDir == Left { //move left
			
			if(currentX > 0){
				sections[--currentX][currentY] = Left; // set room type to entrance left and right
				newDir = choose(Left,Left,Left,Down);
			}else{
				
				//cant move left, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					
					sections[currentX][currentY] = Right;  //type 2 makes it so that there is an exit in floor
					sections[currentX][++currentY] = Down;//type 3 makes it so that there is an entrance in the ceiling
					newDir = choose(Right,Right,Down); //has less probablility going down when path reaches left edge
					
				}else ++currentY; //exit out of loop
				
			}
			
		}else if newDir == Right {  //move right if it doesnt go left
			
			if(currentX < xSections-1){
				sections[++currentX][currentY] = Left; 
				newDir = newDir = choose(Right,Right,Right,Down);
			}else{
				
				//cant move right, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					sections[currentX][currentY] = Right;
					sections[currentX][++currentY] = Down;
					newDir = choose(Left,Left,Down); //has less probablility going down when path reaches right edge
				}else ++currentY;
				
			}
			
		}else if newDir == Down { //move down
			
			if currentY < ySections-1 {
				
				sections[currentX][currentY] = Right;
				sections[currentX][++currentY] = Down;
				newDir = choose(Right,Right,Right,Down);
				if (currentX == xSections-1) newDir = choose(Left,Left,Down); 
				else if(currentX == 0) newDir = choose(Right,Right,Down);  
				
			}else++currentY;
			
		}
	}
}