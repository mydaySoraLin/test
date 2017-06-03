int red,green,blue;
int j;

void setup()
{
	size(300,300);
	background(255);

	for(int i = 0; i <= height; i+=21)
	{
		j = i % 10;
		switch(j)
		{
			case 0:
				red = 255;
				green = 0;
				blue = 0;
			break;
			case 1:
				red = 255;
				green = 125;
				blue = 0;
			break;
			case 2:
				red = 255;
				green = 255;
				blue = 0;
			break;
			case 3:
				red = 0;
				green = 255;
				blue = 0;
			break;
			case 4:
				red = 0;
				green = 255;
				blue = 125;
			break;
			case 5:
				red = 0;
				green = 255;
				blue = 255;
			break;
			case 6:
				red = 0;
				green = 0;
				blue = 255;
			break;
			case 7:
				red = 125;
				green = 0;
				blue = 255;
			break;
			case 8:
				red = 255;
				green = 0;
				blue = 255;
			break;
			case 9:
				red = 255;
				green = 0;
				blue = 125;
			break;
		}

		fill(red,green,blue);
		rect(0,i,width,10);
		fill(green,blue,red);
		rect(i,0,10,height);
	}
}