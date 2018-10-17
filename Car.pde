class Car {
 
  //global variables:
  float xCar; // x-position of car
  float yCar; // y-position of car
  int carWidth; 
  int carHeight;
  int wheelSize; // radius of wheels
  int carColor;
  int wheelColor;
  float speed = 3;
  float speedX = 2;
  float gravity = 0.2;
  
  //Constructor
  Car(float tempXCar, float tempYCar,int tempCarWidth, int tempCarHeight,
  int tempWheelSize, int tempCarColor, int tempWheelColor) {
   
  xCar = tempXCar;
  yCar = tempYCar;
  carWidth = tempCarWidth;
  carHeight = tempCarHeight;
  wheelSize = tempWheelSize;
  carColor = tempCarColor;
  wheelColor = tempWheelColor;
  }
  
  void display() {
  
  float backWheelX;
  float backWheelY;
  float frontWheelX;
  float frontWheelY;
  
  backWheelX = xCar;
  backWheelY = yCar + carHeight;
  frontWheelX = xCar + carWidth;
  frontWheelY = yCar + carHeight;
    
  fill(carColor);
  stroke(0);
  rect(xCar,yCar,carWidth,carHeight); // carBody
  fill(wheelColor);
  ellipse(backWheelX,backWheelY,wheelSize,wheelSize); // backWheel
  ellipse(frontWheelX,frontWheelY,wheelSize,wheelSize); // frontWheel
  }
  
  void move(){
    xCar = xCar + speedX;
    if(xCar < 0 || xCar > 700) {
      speedX = -speedX;
    }
  
  }
  
  void bounce() {
     yCar = yCar + speed;
     speed = speed + gravity;
    if(yCar > 550) {
      speed = speed * -0.90; // dampening effect
      yCar = 550;
    }
  }
  
  
  
}
