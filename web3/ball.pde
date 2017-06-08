void setup()
{
	size(400,300);
  	background(255);
}

void draw()
{
	stroke();
	if(mousePressed)
	{
		fill(mouseX,mouseY,0);
	}
	else
	{
		fill(255);
	}
	ellipse(mouseX,mouseY,30,30);
	if(!play)
	{
		stop();
	}
}

boolean play = false;

void playSketch()
{
	play = true;
	loop();
	background(255);
}

void stop()
{
	noLoop();
	fill(153,100);
	noStroke();
	rect(0,0,400,300);
}
