Trailing[] tra = new Trailing[15];

void setup()
{
	size(400,300);
	smooth();
	frameRate(30);
	for(int i = 0; i < tra.length; i++)
	{
		tra[i] = new Trailing();
	}
}

void draw()
{
	background(255);
	for(int i = 0; i < tra.length; i++)
	{
		tra[i].tail();
		tra[i].display();
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
	float dis;
	float large;

	Trailing()
	{
		location = new PVector(random(width),random(height));
		velocity = new PVector(0,0);
		topspeed = 10;
	}

	void tail()
	{
		PVector mouse = new PVector(mouseX, mouseY);
		PVector acceleration = PVector.sub(mouse, location);
		dis = dist(location.x, location.y, mouseX, mouseY);
		large = 60 / dis;
		if(large < 1) large *= 5;
		if(large > 8)
		{
			large = 8;
		}

		acceleration.normalize();
		acceleration.mult(0.4);

		velocity.add(acceleration);
		velocity.limit(topspeed);
		location.add(velocity);

		ellipse(location.x, location.y, large, large);
	}

	void display()
	{
		stroke(0);
		strokeWeight(1);
		fill(50);
		line(location.x, location.y, mouseX, mouseY);
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