int cir_num = 7;
DrawCircle[] cir = new DrawCircle[cir_num];
boolean play = false;

void setup()
{
	size(400,300);
	background(255);
	for(int i = 0; i < cir_num; i++)
	{
		cir[i] = new DrawCircle(i);
	}
}

void draw()
{
	background(255);
	smooth();

	for(int i = 0; i < cir_num; i++)
	{
		if(i != (cir_num-1))
		{
			cir[i+1].targetX = cir[i].nowX();
			cir[i+1].targetY = cir[i].nowY();
		}
		cir[i].display(i);
	}

	if(!play)
	{
		stop();
	}
}

class DrawCircle
{
	float x,y;
	float dx,dy;
	float targetX,targetY;

	DrawCircle(int i)
	{
		stroke(80);
		ellipse(mouseX,mouseY, 30 * (i + 1), 30 * (i + 1));
	}

	void display(int i)
	{
		if(i == 0)
		{
			dx = mouseX - x;
			dy = mouseY - y;
		}
		else
		{
			dx = targetX - x;
			dy = targetY - y;
		}

		if(abs(dx) > 1)
		{
			x += dx * 0.1;
		}
		if(abs(dy) > 1)
		{
			y += dy * 0.1;
		}
		noFill();
		stroke(80);
		ellipse(x,y,30 * (i + 1), 30 * (i + 1));
	}

	float nowX()
	{
		return x;
	}
	float nowY()
	{
		return y;
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
	rect(0,0,400,300);
}
