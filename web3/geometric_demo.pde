int numPoints = 8;
Trailing[] points = new Trailing[numPoints];

void setup()
{
	size(400,300);
  	frameRate(40);
	for(int i = 0; i < numPoints; i++)
	{
		points[i] = new Trailing();
	}
}

void draw()
{
	smooth();
	background(0);
	noFill();
	for(int i = 0; i < numPoints; i++)
	{
		points[i].tail();
		points[i].display();

		//point to point line
		for(int j = 0; j < numPoints; j++)
		{
			strokeWeight(1);
			if(j != i)
			{
				float dst = dist(points[i].x(), points[j].y(), points[j].x(), points[j].y());
				if(dst < 255)
				{
					stroke(255,255 - dst);
					line(points[i].x(), points[i].y(), points[j].x(), points[j].y());
				}
			}
		}
	}
	if(!play)
	{
		stop();
	}
}

class Trailing
{
	PVector location;
	PVector velocity;
	PVector acceleration;
	float topspeed;

	Trailing()
	{
		location = new PVector(random(width),random(height));
		velocity = new PVector(0,0);
		topspeed = 6;
	}

	void tail()
	{
		PVector mouse = new PVector(mouseX, mouseY);
		PVector acceleration = PVector.sub(mouse, location);

		acceleration.normalize();
		acceleration.mult(0.2);

		velocity.add(acceleration);
		velocity.limit(topspeed);
		location.add(velocity);
	}

	float x()
	{
		return location.x;
	}

	float y()
	{
		return location.y;
	}

	void display()
	{
		stroke(0);
		strokeWeight(1);
    		point(location.x,location.y);
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
	rect(0,0,400,300);
}
