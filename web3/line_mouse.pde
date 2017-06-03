//hei其實是直線條上方無顏色區塊
int num = 20;
int count_stop = 0;
float[] hei = new float[num];

void setup()
{
	size(400,300);
	for(int i = 0; i < num; i++)
	{
		hei[i] = height - 30;
	}
}

void draw()
{
	background(255);
	float wid = width / num;
	int mosX = int(mouseX / wid);
	hei[mosX] = mouseY;

	for(int i = 0; i < num; i++)
	{
		noStroke();
		fill(200 - i * 10);
		rect(i * wid, hei[i], wid, height - hei[i]);

		if(hei[i] < height - 30)
		{
			hei[i] = hei[i] * 1.01;
		}
		else
		{
			hei[i] = height - 30;
		}
	}

	if(!play)
	{
		if(stopp && count_stop <= 1)
		{
			stop();
		}
	}
}

boolean play = false;
boolean stopp = true;

void playSketch()
{
	play = true;
	stopp = false;
	loop();
}

void stop()
{
	noLoop();
	fill(153,100);
	rect(0,0,400,300);
	count_stop++;
}