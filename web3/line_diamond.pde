int num = 10;
Diamond[] dia = new Diamond[num];

void setup()
{
	size(300,300);
	frameRate(10);
	for(int i = 0; i < num; i++)
	{
		dia[i] = new Diamond(i);
	}
}

void draw()
{
	background(255);
	smooth();
	for(int i = 1; i < num; i++)
	{
		dia[i - 1].red = dia[i].color_red();
		dia[i - 1].green = dia[i].color_green();
		dia[i - 1].blue = dia[i].color_blue();
		if(i == 9)
		{
			dia[i].red = dia[0].color_red();
			dia[i].green = dia[0].color_green();
			dia[i].blue = dia[0].color_blue();
		}
		dia[i].display();
	}
	if(!play)
	{
		stop();
	}
}

class Diamond
{
	PVector top;
	PVector right;
	PVector left;
	PVector bottom;
	int level = int(width / num / 2);
	float red;
	float green;
	float blue;

	Diamond(int i)
	{
		top	   = new PVector(150, i * level);
		right  = new PVector(150 + (num - i) * level, 150);
		left   = new PVector(i * level, 150);
		bottom = new PVector(150, 150 + (num - i) * level);
		switch(i)
		{
			case 0:
				red = 255;
				green = 0;
				blue = 0;
			break;
			case 1:
				red = 255;
				green = 125;
				blue = 0;
			break;
			case 2:
				red = 255;
				green = 255;
				blue = 0;
			break;
			case 3:
				red = 0;
				green = 255;
				blue = 0;
			break;
			case 4:
				red = 0;
				green = 255;
				blue = 125;
			break;
			case 5:
				red = 0;
				green = 255;
				blue = 255;
			break;
			case 6:
				red = 0;
				green = 0;
				blue = 255;
			break;
			case 7:
				red = 125;
				green = 0;
				blue = 255;
			break;
			case 8:
				red = 255;
				green = 0;
				blue = 255;
			break;
			case 9:
				red = 255;
				green = 0;
				blue = 125;
			break;

		}
	}

	float color_red()
	{
		return red;
	}

	float color_green()
	{
		return green;
	}

	float color_blue()
	{
		return blue;
	}

	void display()
	{
		stroke(red, green, blue);
		line(top.x ,top.y ,right.x ,right.y);
		line(right.x ,right.y ,bottom.x ,bottom.y);
		line(bottom.x ,bottom.y ,left.x ,left.y);
		line(left.x ,left.y ,top.x ,top.y);
	}
}

boolean play = false;

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