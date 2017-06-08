boolean light = true;

void setup()
{
  size(300,300);
  background(255);

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
  if(!play)
  {
    stop();
  }
}

void mouseClicked()
{
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
  else
  {
    light = true;
    background(255);
    noStroke();
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
}