int num = 8;
float[] angle = new float[num];
float[] x = new float[num];
float[] y = new float[num];
float angl = 360 / num;
float angle1;
boolean play = false;

void setup()
{
	size(300,300);
	background(255);
	for(int i = 0; i < num; i++)
	{
		angle[i] = radians(angl * i);
	}
}

void draw()
{
	background(255);
	
	for(int i = 0; i < num; i++)
	{
		x[i] = 150 + (75 * cos(angle[i]));
		y[i] = 150 + (75 * sin(angle[i]));

		noFill();
		stroke(0);
		arc(x[i],y[i],150,150,0+(angle[i]),PI+(angle[i]));
		angle[i] += 1;
	}

	if(!play)
	{
		stop();
	}
}

void playSketch()
{
	play = true;
	loop();
}

void stop()
{
	noLoop();
	fill(153,100);
	noStroke();
	rect(0,0,300,300);
}