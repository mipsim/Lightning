PImage img;

int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;
int colRed = (int)(Math.random()*255);
int colGreen = (int)(Math.random()*255);
int colBlue = (int)(Math.random()*255);
int lightReset = 0;

void setup()
{
	size(800,500);
	strokeWeight(1);
	background(0,0,0);
	img = loadImage("Instinct.png");
}

void draw()
{
	lightReset = lightReset + 1;
	if (lightReset > 15)
	{
		background(0, 0, 0);
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
	image (img, 190, 50,2071/5,1915/5);
	startX = 0;
	startY = 250;
	endX = 0;
	endY = 250;
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
	image (img, 190, 50,2071/5,1915/5);
	startX = 0;
	startY = 250;
	endX = 0;
	endY = 250;
	}	
}

//void mousePressed()
//{
//	startX = 0;
//	startY = 150;
//	endX = 0;
//	endY = 150;
//	draw();
//}
// delete 4 lines following image display to stop loop
