float r1 = 100;
float r2 = 70;
float r3 = 30;
float ang1,angle1;
float ang2,angle2;
float ang3,angle3;
float x1,y1,x2,y2,x3,y3;
boolean play = false;

void setup()
{
	size(300,300);
	background(255);
}

void draw()
{
	smooth();
	fill(255,100,0);
	noStroke();

	pushMatrix();
	translate(width/2,height/2);
	ang1 = radians(angle1);
	ang2 = radians(angle2);
	ang3 = radians(angle3);
	x1 = r1 * cos(ang1);
	y1 = r1 * sin(ang1);
	x2 = r2 * cos(ang2);
	y2 = r2 * sin(ang2);
	x3 = r3 * cos(ang3);
	y3 = r3 * sin(ang3);
	scale(1 + 0.1 * sin(ang1 * 10));
	ellipse(x1,y1,2,2);
	ellipse(x2,y2,3,3);
	ellipse(x3,y3,2,2);
	popMatrix();

	angle1++;
	angle2 -= 3;
	angle3 += 3;
	
	if(!play)
	{
		stop();
	}
}

void playSketch()
{
	play = true;
	background(255);
	loop();
}

void stop()
{
	noLoop();
	fill(153,100);
	noStroke();
	rect(0,0,300,300);
}
