void setup()
{
	size(600,300);
	background(255);
}

void  draw()
{
	int line_num = 25;
	
	for(int i = 0; i <= line_num; i++)
	{
		//外框線的顏色(線段顏色) 
		stroke(255 - i * 10, i * 10, 255 - i * 20); 
		//外框線粗細(線段粗細) 
		strokeWeight(i); 
		//劃線 
		line(10 + i * line_num, 10, 10 + i * line_num, width - 10);
	}
	
}