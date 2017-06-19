float dis,ang,angle;
float half_width,half_height;
boolean play;

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
		rotateY(radians(90*i));
		
		for(int j = 0; j <= 3; j++)
		{
			fill(128,128,255);
			pushMatrix();
			rotateX(radians(90*j));
			beginShape(TRIANGLES);
			vertex(15,-15,15);
			vertex(15,15,15);
			vertex(80,0,0);
			endShape();
			popMatrix();
		}

		popMatrix();
	}

	for(int i = 0; i <= 1; i++)
	{
		pushMatrix();
		rotateX(radians(180*i));

		for(int j = 0; j <= 3; j++)
		{
			fill(128,128,255);
			pushMatrix();
			rotateY(radians(90*j));
			beginShape(TRIANGLES);
			vertex(-15,-15,15);
			vertex(15,-15,15);
			vertex(0,-80,0);
			endShape();
			popMatrix();
		}

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
