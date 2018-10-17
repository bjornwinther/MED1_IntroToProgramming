Car car1 = new Car(100,300,100,50,30,#584ADE,#97FF43);
Car car2 = new Car(400,200,50,25,15,#16EEF7,#F7E516);

void setup () {
  size(800,600);
}


void draw () {
  background(255);
  car1.display();
  car1.move();
  car1.bounce();
  car2.display();
  car2.move();
  car2.bounce();
  
}
