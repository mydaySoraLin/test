float angle,ang;
boolean play = false;

void setup()
{
	size(300,300,P3D);
	background(255);
}

void draw()
{
	background(255);
	smooth();
	translate(width/2,height/2,0);

	ang = radians(angle);
	rotateY(ang);
	
	box(150,10,150);
	box(10,150,150);
	box(150,150,10);

	//直
	line(5,-75,5,5,75,5);
	line(5,-75,-5,5,75,-5);
	line(-5,-75,5,-5,75,5);
	line(-5,-75,-5,-5,75,-5);

	//橫
	line(-75,5,5,75,5,5);
	line(-75,5,-5,75,5,-5);
	line(-75,-5,5,75,-5,5);
	line(-75,-5,-5,75,-5,-5);

	//縱
	line(5,5,-75,5,5,75);
	line(5,-5,-75,5,-5,75);
	line(-5,5,-75,-5,5,75);
	line(-5,-5,-75,-5,-5,75);

	angle++;

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
}