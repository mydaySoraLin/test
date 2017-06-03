int min_cir,max_cir;
int cir_num = 12;
DrawCirlce[] drawCir = new DrawCirlce[cir_num];
boolean play = false;

void setup()
{
	size(300,300);
	background(255);

	for(int i = 0; i < cir_num; i++)
	{
		drawCir[i] = new DrawCirlce(i);

	}
	min_cir = 0;
	max_cir = cir_num - 1;
}

void draw()
{
	background(255);

	for(int i = 0; i < cir_num; i++)
	{
		drawCir[i].display(i);

		//如果最小圈半徑超過2倍單位長度(width / 圈圈數)，則把最大的園補為最內圈
		if(drawCir[min_cir].cir_r() > (width / (cir_num - 2) * 2))
		{
			drawCir[max_cir].r = width / (cir_num - 2);
			min_cir = max_cir;

			if(max_cir >= 1)
			{
				max_cir -= 1;
			}
			else
			{
				max_cir = cir_num - 1;
			}			
		}
	}
	if(!play)
	{
		stop();
	}
}

class DrawCirlce
{
	float r;
	float max_r = width * sqrt(2);

	DrawCirlce(int i)
	{
		noFill();
		stroke(50);
		r = width / (cir_num - 2) * (i + 1);
		ellipse(width / 2,height / 2, r, r);
	}

	void display(int i)
	{
		noFill();
		stroke(50);
		r++;
		ellipse(width / 2,height / 2, r, r);
	}

	float cir_r()
	{
		return r;
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