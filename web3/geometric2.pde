void setup()
{
	size(300,300);
	background(255);

	fill(0);
	arc(150,150,300,300,0,PI);
	fill(255);
	arc(150,150,300,300,PI,TWO_PI);
	fill(0);
	arc(75,150,150,150,PI,TWO_PI);
	fill(255);
	arc(225,150,150,150,0,PI);

	fill(255);
	ellipse(75,150,40,40);
	fill(0);
	ellipse(225,150,40,40);
}