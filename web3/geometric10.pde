float angl1,angle1;
float angl2,angle2;
float x1,y1,x2,y2;
float r1 = 70;
float r2 = 120;
boolean play = false;

void setup()
{
	size(300,300);
	background(255);
}

void draw()
{
	smooth();
	angl1 = radians(angle1);
	angl2 = radians(angle2);
	
	pushMatrix();
	translate(width/2,height/2);
	x1 = r1 * cos(angl1);
	y1 = r1 * sin(angl1);
	x2 = r2 * cos(angl2);
	y2 = r2 * sin(angl2);

	stroke(0,100,200);
	line(x1,y1,x2,y2);
	angle1 += 20;
	angle2 += 1;
	popMatrix();

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
	rect(0,0,300,300);
}