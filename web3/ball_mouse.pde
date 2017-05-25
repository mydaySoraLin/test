int num = 100;
int row = int(sqrt(num));
Circle[][] cir = new Circle[row][row];

void setup()
{
	size(300,300);
	
	for(int i = 0; i < row; i++)
	{
		for(int j = 0; j < row; j++)
		{
			cir[i][j] = new Circle(i,j);
		}
	}
}

void draw()
{
	background(255);
	for(int i = 0; i < row; i++)
	{
		for(int j = 0; j < row; j++)
		{
			cir[i][j].large(i,j);
		}
	}
	if(!play)
	{
		stop();
	}
}

class Circle
{
	int r;
	int distance;
	int w = int((width / row) / 2);

	Circle(int i,int j)
	{
		fill(200,200,200);
		ellipse(x(i), y(j), w * 2, w * 2);
	}
	void large(int i,int j)
	{
		noStroke();
		distance = int(dist(x(i), y(j), mouseX, mouseY) / 2);
		if(distance > 30) distance = 30;
		fill(200,200,200);
		ellipse(x(i), y(j), distance,distance);
	}

	int x(int dist_x)
	{
		int dist = w + dist_x * 2 * w;
		return dist;
	}

	int y(int dist_y)
	{
		int dist = w + dist_y * 2 * w;
		return dist;
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