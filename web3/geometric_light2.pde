int num = 3;
int count,dis_num;
//貓出現
int[] display = new int[num];

PImage c1;
boolean light = true;

void setup()
{
	size(300,300);
	background(255);

	c1 = loadImage("C0003.png");

	//設定喵咪出來3次
	while(dis_num < 3)
	{
		int j = (int)random(5,20);
		if(j % 2 == 1)
		{
			display[dis_num] = j;
			dis_num++;
		}
	}

	//重新排列出現次數，小 → 大
	for(int j = 0; j < num-1; j++)
	{
		if(display[j] > display[j+1])
		{
			int k = display[j];
			display[j] = display[j+1];
			display[j+1] = k;
		}
	}

	noStroke();
	fill(255,255,0);
	arc(150,45,60,60,QUARTER_PI,QUARTER_PI*3);
	
	fill(175);
	beginShape();
	vertex(195,0);
	vertex(225,60);
	vertex(75,60);
	vertex(105,0);
	endShape(CLOSE);
}

void draw()
{
}

void mouseClicked()
{
	count++;

	//黑暗，點燈
	if(light)
	{
		light = false;
		background(0);

		for(int i = 0; i < 10; i++)
		{
			fill(255,255,0, (i+1)*10);
			arc(150, -100, 800-(i*50), 800-(i*50), radians(66), radians(114));
		}
	}
	//天亮，開燈
	else
	{
		light = true;
		background(255);
		fill(255,255,0);
		arc(150,45,60,60,QUARTER_PI,QUARTER_PI*3);
	}

	noStroke();
	fill(175);
	beginShape();
	vertex(195,0);
	vertex(225,60);
	vertex(75,60);
	vertex(105,0);
	endShape(CLOSE);

	//覆蓋
	for(int i = 0; i < dis_num; i++)
	{
		if(count == display[i]) image(c1,0,0,width,height);
	}
}