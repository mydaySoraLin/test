float dis,ang,angle;
float half_width,half_height;
boolean play;

void setup()
{
	size(300,300,P3D);
	background(255);

	half_width = width / 2;
	half_height = height / 2;
	mouseX = (int)half_width;
	mouseY = (int)half_height;
}

void draw()
{
	background(255);
	smooth();
	
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
	for(int i = 0; i <= 3; i++)
	{
		pushMatrix();
		switch(i)
		{
			case 1:
				rotateY(radians(90));
			break;
			case 2:
				rotateZ(radians(90));
			break;
		}
		box(100,100,10);
		box(100,10,100);
		box(150,50,10);
		box(150,10,50);
		box(200,10,10);
		popMatrix();
	}
	angle--;
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