float x1,y1,x2,y2,angle1;
float angle2 = 179;
boolean play = false;

void setup()
{
	size(300,300);
	background(255);
}

void draw()
{
	background(255);
	float ang1 = radians(angle1);
	float ang2 = radians(angle2);
	// println("ang1:"+ang1+" "+"ang2:"+ang2+" "+"ang3:"+ang3);
	x1 = 150 + (75 * cos(ang2));
	y1 = 150 + (75 * sin(ang2));
	x2 = 150 + (75 * cos(ang1));
	y2 = 150 + (75 * sin(ang1));
	//下大(黑)
	fill(0);
	arc(150,150,300,300,0+ang1,PI+ang1);

	//上大(白)
	fill(255);
	stroke(0);
	arc(150,150,300,300,PI+ang1,TWO_PI+ang1);

	//上小(黑)
	fill(0);
	arc(x1,y1,150,150,PI+ang1,TWO_PI+ang1);

	//下小(白)
	fill(255);
	arc(x2,y2,150,150,0+ang1,PI+ang1);


	//下小白球
	fill(255);
	ellipse(x1,y1,40,40);

	//上小黑球
	fill(0);
	ellipse(x2,y2,40,40);

	angle1 += 1;
	angle2 += 1;
  
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
	rect(0,0,400,300);
}