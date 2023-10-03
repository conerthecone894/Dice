int total = 0;
Die d = new Die();
//this variable just prevents a die from being drawn when starts
//I wanted the first one to come after the first click

void setup()
  {
  	size(512, 512);
  	background(#9EC6E4);
  	noLoop();
  }
  void draw()
  {
	noStroke();
	fill(#9EC6E4);
 	rect(0, 0, 200, 35);
	 
  	Die d = new Die();
  	d.show();
  	d.roll();
  	//constructs die func.
  	 
 	fill(#6285C1);
 	textSize(20);
 	text("the total = " + total, 15, 25);
 	//displays the total
  }
  void mousePressed()
  {
  	redraw(); //a die is only drawn when the canvas is clicked
  }
 
  class Die //models one single dice cube
  {
 	int x, y, result;
 	int[] dieColorPicker = {0, 3, 6, 9};
 	int[] dieColor = {203, 223, 238, 238, 215, 203, 241, 243, 199, 210, 244, 209};
   	//#CBDFEE, #EED7CB, #FDFFB4, #D2F4D1
   	//the die will be one of these 4 colors. selected randomly
  	 
  	Die() //constructor (initializes member variables)
  	{
      	x = (int)((Math.random()*415)+25);
      	y = (int)((Math.random()*388)+60);
  	}
  	void roll() //generates the random number and draws the pattern
  	{
      	result = (int)((Math.random()*6)+1);
      	total += result;
     	 
      	stroke(#7E8898);
      	if(result == 1){
        	line(x+25, y+35, x+25, y+15);
      	}
      	if(result == 2){
        	line(x+20, y+35, x+20, y+15);
        	line(x+30, y+35, x+30, y+15);
      	}
      	if(result == 3){
        	line(x+15, y+35, x+15, y+15);
        	line(x+35, y+35, x+35, y+15);
        	line(x+25, y+35, x+25, y+15);
      	}
      	if(result == 4){
        	line(x+14, y+35, x+14, y+15);
        	line(x+21, y+35, x+21, y+15);
        	line(x+29, y+35, x+29, y+15);
        	line(x+36, y+35, x+36, y+15);
      	}
      	if(result == 5){
        	line(x+14, y+35, x+14, y+15);
        	line(x+21, y+35, x+21, y+15);
        	line(x+29, y+35, x+29, y+15);
        	line(x+36, y+35, x+36, y+15);
        	line(x+13, y+37, x+37, y+13);
      	}
      	if(result == 6){
        	noFill();
        	triangle(x+13, y+15, x+25, y+24, x+37, y+15);
        	triangle(x+13, y+35, x+25, y+26, x+37, y+35);
        	line(x+25, y+40, x+25, y+10);
        	line(x+40, y+25, x+10, y+25);
      	}
      	//the patterns that are drawn based on the number rolled
  	}
  	void show() //draws the body of the die
  	{
      	int picky = dieColorPicker[(int)(Math.random()*4)];
      	fill(dieColor[picky], dieColor[picky+1], dieColor[picky+2]);
      	//the code that selects the die's color
      	stroke(#7E8898);
      	rect(x, y, 50, 50, 25);
  	}
 	}



