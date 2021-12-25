ArrayList<Car> Cars = new ArrayList<Car>();

void setup(){
  size(1000,1000);
  noStroke();
  
  for(int i = 0; i < 4; i++){
  Cars.add(new Car(random(100,900), random(100,900), random(-3,3), random(-3,3),  int(random(255)), int(random(255)), int(random(255))));
  }
}

void draw(){
  clear();
  background(25);
  
  for(int i = 0; i < Cars.size(); i++){
    Cars.get(i).Display();
    Cars.get(i).Move();
  }
}
