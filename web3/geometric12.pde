float g,b;
float x,y;
boolean play = false;

void setup()
{
	size(400,400);
	background(255);
	noStroke();
}

void draw()
{
	for(int i = 0; i < 100; i++)
	{
		g = map(mouseX,0,width,0,255);
		b = map(mouseY,0,height,0,255);
		fill(0,g,b,40);
		x = mouseX + random(-10,10);
		y = mouseY + random(-10,10);
		ellipse(x,y,2,2);
	}
	if(!play)
	{
		stop();
	}
}

void playSketch()
{
	play = true;
	background(255);
	loop();
}

void stop()
{
	noLoop();
	fill(153,100);
	noStroke();
	rect(0,0,400,400);
}