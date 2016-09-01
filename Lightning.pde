PImage img;

int startX = 0;
int startY = 275;
int endX = 0;
int endY = 275;
int colRed = (int)(Math.random()*255);
int colGreen = (int)(Math.random()*255);
int colBlue = (int)(Math.random()*255);
int lightReset = 0;

void setup()
{
	size(800,550);
	strokeWeight(1.25);
	background(0,0,0);
	img = loadImage("Instinct.png");
}

void draw()
{
	lightning();
	message();
}

void message()
{
	fill(255,255,255);
	textAlign(CENTER);
	textSize(140);
	text("INSTINCT",400,530);
}

void lightning()
{
	lightReset = lightReset + 1;
	if (lightReset > 10)
	{
		background(0, 0, 0);
		colRed = (int)(Math.random()*255);
		colGreen = (int)(Math.random()*255);
		colBlue = (int)(Math.random()*255);
		stroke(colRed,colGreen,colBlue);
		while(endX < 810)
		{
			endX = startX + (int)(Math.random()*10);
			endY = startY + (int)(Math.random()*19-10);
			line(startX,startY,endX,endY);
			startX = endX;
			startY = endY;
		}
		image (img, 190, 30,2071/5,1915/5);
		startX = 0;
		startY = 275;
		endX = 0;
		endY = 275;
		lightReset = 0;
	}
	//Clears lightning on screen
	else
	{
		colRed = (int)(Math.random()*255);
		colGreen = (int)(Math.random()*255);
		colBlue = (int)(Math.random()*255);
		stroke(colRed,colGreen,colBlue);
		while(endX < 810)
		{
			endX = startX + (int)(Math.random()*10);
			endY = startY + (int)(Math.random()*19-9);
			line(startX,startY,endX,endY);
			startX = endX;
			startY = endY;
		}
		image (img, 190, 30,2071/5,1915/5);
		startX = 0;
		startY = 275;
		endX = 0;
		endY = 275;
	}	
}