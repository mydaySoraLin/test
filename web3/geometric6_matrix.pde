float angle,ang,dis,half_width,half_height;
boolean play = false;

void setup()
{
	size(300,300,P3D);
	background(255);
	half_width = width / 2;
	half_height = height / 2;
	mouseX = half_width;
	mouseY = half_height;
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

	ang = radians(angle);
	rotateY(ang);
	box(150,10,150);
	box(10,150,150);
	box(150,150,10);

	//直
	for(int i = 0; i <= 3; i++)
	{
		pushMatrix();
		rotateY(radians(90*i));
		line(5,-75,5,5,75,5);
		popMatrix();
	}

	//橫
	for(int i = 0; i <= 3; i++)
	{
		pushMatrix();
		rotateX(radians(90*i));
		line(-75,5,5,75,5,5);
		popMatrix();
	}

	//縱
	for(int i = 0; i <= 3; i++)
	{
		pushMatrix();
		rotateZ(radians(90*i));
		line(5,5,-75,5,5,75);
		popMatrix();
	}

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
