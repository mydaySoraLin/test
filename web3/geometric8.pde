int num = 10;
int uni_width = 10;
float rotate_deg,ver;
float half_width,half_height;
boolean play = false;

void setup()
{
	size(300,300);
	background(255);

	half_width = width / 2;
	half_height = height / 2;
}

void draw()
{
	background(255);
	smooth();
	rotate_deg = map(mouseX,0,width,0,30);

	for(int i = 1; i <= num; i++)
	{
		noFill();
		strokeWeight(3);

		pushMatrix();
		translate(half_width,half_height);
		rotate(radians(rotate_deg* i));
		ver = uni_width * i;
		stroke(200 - 20 * i, 20 * i, 10 * i);
		rect(-ver, -ver, ver * 2,ver * 2);
		popMatrix();
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
	fill(153,100);
	noStroke();
	rect(0,0,300,300);
}