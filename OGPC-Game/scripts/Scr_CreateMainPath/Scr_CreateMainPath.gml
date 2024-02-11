function CreateMainPath(){
	//select starting room from the top row 
	var currentX = irandom(xSections-1);//initialize starting x
	var currentY = 0;					 //initialize starting y
	var newDir = 0;						 //keep track on which direction to move
	sections[currentX][currentY] = LR; //start with room type exit left to right
	
	while currentY < ySections { //if the current y position of the path goes below 4 (path usually goes down)
		if(newDir == 0) newDir = choose(LR,LR,Intersect,Intersect,Down); 
		
		if newDir == LR { //move left
			if(currentX > 0){
				sections[--currentX][currentY] = LR; // set room type to entrance left and right
				newDir = choose(LR,LR,LR,Down);
			}else{
				
				//cant move left, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					sections[currentX][currentY] = Intersect;  //type 2 makes it so that there is an exit in floor
					sections[currentX][++currentY] = Down;//type 3 makes it so that there is an entrance in the ceiling
					newDir = choose(Intersect,Intersect,Down); //has less probablility going down when path reaches left edge
					
				}else ++currentY; //exit out of loop
				
			}
			
		}else if newDir == Intersect {  //move right if it doesnt go left
			if(currentX < xSections-1){
				sections[++currentX][currentY] = LR; 
				newDir = newDir = choose(Intersect,Intersect,Intersect,Down);
			}else{
				
				//cant move right, go down and change current room into 2 and next room into 3
				if currentY < ySections-1 {
					sections[currentX][currentY] = Intersect;
					sections[currentX][++currentY] = Down;
					newDir = choose(LR,LR,Down); //has less probablility going down when path reaches right edge
				}else ++currentY;
				
			}
			
		}else if newDir == Down { //move down
			if currentY < ySections-1 {
				sections[currentX][currentY] = Intersect;
				sections[currentX][++currentY] = Down;
				newDir = choose(Intersect,Intersect,Intersect,Down);
				if (currentX == xSections-1) newDir = choose(LR,LR,Down); 
				else if(currentX == 0) newDir = choose(Intersect,Intersect,Down);  
				
			}else++currentY;
			
		}
	}
}