TailingMinion[] tMinion = new TailingMinion[30];

void setup()
{  
    size(400,300);
    smooth();
    frameRate(60);
    for(int i = 0; i < tMinion.length; i++)
    {
        tMinion[i] = new TailingMinion();
    }
}

void draw()
{
    background(255);
    for(int i = 0; i < tMinion.length; i++)
    {
        tMinion[i].tail();
        tMinion[i].display();
    }
    if(!play) 
    { 
        stop(); 
    }
}

class TailingMinion
{
    PVector location;
    PVector velocity;
    PVector acceleration; 
    private float ball_red;
    private float ball_green;
    private float ball_blue;
    private float ball_opacity;
    float topspeed;   //the mover's maximum speed

    TailingMinion()
    {
        location = new PVector(random(width), random(height));
        velocity = new PVector(0, 0);
        ball_red = random(0, 255);
        ball_green = random(0, 255);
        ball_blue = random(0, 255);
        ball_opacity = random(50, 200);
        topspeed = 6;
    }

    void tail()
    {
        PVector mouse = new PVector(mouseX, mouseY);
        PVector acceleration = PVector.sub(mouse, location);

        acceleration.normalize();
        acceleration.mult(0.4);

        velocity.add(acceleration);
        velocity.limit(topspeed);
        location.add(velocity);
    }

    void display()
    {
        stroke(0);
        strokeWeight(1);
        fill(ball_red, ball_green, ball_blue, ball_opacity);
        ellipse(location.x, location.y, 20, 20);
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
    fill(153, 100);
    noStroke();
    rect(0, 0, 400, 300);
}