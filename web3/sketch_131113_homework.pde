TailingMinion[] tMinion=new TailingMinion[20];

void setup(){
  
  size(400,300);
  smooth();
  frameRate(60);
  for(int i=0;i<tMinion.length;i++){
    tMinion[i]=new TailingMinion();
  }
  
}

void draw(){
  
  background(255);
  for(int i=0;i<tMinion.length;i++){
    tMinion[i].tail();
    tMinion[i].display();
  }
  //tMinion.tail();
  //tMinion.display();
  
}

class TailingMinion{
  
  PVector location;
  PVector velocity;
  PVector acceleration; 
  float topspeed;//the mover's maximum speed
  
  TailingMinion(){
    
    location=new PVector(random(width),random(height));
    velocity=new PVector(0,0);
    topspeed=5;
    
  }
  
  void tail(){
    
    PVector mouse=new PVector(mouseX,mouseY);
    PVector acceleration=PVector.sub(mouse,location);
    acceleration.normalize();
    acceleration.mult(0.2);
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,30,30);
  }
  
}