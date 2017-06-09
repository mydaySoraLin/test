float angle,ang,dis,half_width,half_height;
boolean play = false;

void setup()
{
	size(300,300,P3D);
	background(255);
	half_width = width / 2;
	half_height = height / 2;
}

void draw()
{
	background(255);
	dis = mouseX;
	if(dis >= half_width)
	{
		dis -= 150;
		translate(half_width, half_height + dis, 0);
	}
	else if(dis < half_width)
	{
		dis = abs(dis - half_width);
		translate(half_width, half_height - dis, 0);
	}
	println(dis);

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

	if(!mosuePressed)
	{
		angle++;
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
}