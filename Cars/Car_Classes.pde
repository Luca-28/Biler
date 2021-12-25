class Car{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  color c;
  int direction;
  
  Headlights Headlight = new Headlights(int(random(100,250)),int(random(100,250)),int(random(100,250)));
  Wheels Wheels = new Wheels(random(10,30),int(random(250)));
  
  
  Car(float X, float Y, float XSpeed, float YSpeed, int R, int G, int B){
    x = X;
    y = Y;
    xSpeed = XSpeed;
    ySpeed = YSpeed;
    c = color(R,G,B);
    
    if(xSpeed > 0){
      direction = 1;
    } else {
      direction = -1;
    }
  }
  
  
  void Display(){
    fill(c);
    rect(x-100,y,200,50);
    ellipse(x,y,200,100);
    
    fill(100,200,200);
    rect(x+100*direction,y-10,-50*direction,20);
    
    Headlight.Display(x,y,direction);
    Wheels.Display(x,y);
  }
  
  void Move(){
    x += xSpeed;
    y += ySpeed;
    
    if(x > 1000){
      x = 0;
    }
    if(x < 0){
      x = 1000;
    }
    if(y > 1000){
      y = 0;
    }
    if(y < 0){
      y = 1000;
    }
    
  }
}


class Headlights{
  color c;
  
  Headlights(int R,int G,int B){
    c = color(R,G,B);
  }
  void Display(float X, float Y, int Direction){
    fill(c);
    rect(X+100*Direction,Y+15,-20*Direction,10);
    triangle(X+90*Direction,Y+20,X+200*Direction,Y-10,X+200*Direction,Y+50);
  }
}

class Wheels{
  float size;
  color c;
  
  Wheels(float Size,int C){
    size = Size;
    c = color(C);
  }
  
  void Display(float X, float Y){
    fill(c);
    circle(X-80,Y+50,3*size);
    circle(X+80,Y+50,3*size);
  }
}
