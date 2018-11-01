class Obstacle {
 
  float x;
  float y; 
  float sizeX;
  float sizeY;
  
  float speed;
  int state;
  
  Obstacle(float temp_x, float temp_y, float temp_sizeX, float temp_sizeY,
  float temp_speed) {
    
    x = temp_x;
    y = temp_y;
    sizeX = temp_sizeX;
    sizeY = temp_sizeY;
    speed = temp_speed;
    
  }
  
  void showObstacle() {
   fill(255,255,0);
   rect(x,y,sizeX,sizeY);
  }
  
  void checkCollision() {
   if(player.charX > x && player.charX < x + sizeX && player.charY > y &&
    player.charY < y + sizeY) {
    player.charX = 10;
    life = life -1;
    }
  }
  
  void moveUpDown() {
   y = y + speed;
   if(y > 470 || y < 350 ) {
    speed = -speed; 
   }
  }
  
  void moveObstacleInCircle() {
    if(state == 0) {
      y = y -speed;
      if(y < 350 ) {
      state = 1;
      y = 350;
      }
    }
    if(state == 1) {
      x = x + speed;
      if (x > 550) {
       state = 2;
       x = 550;
      }
    }
    if(state == 2) {
      y = y + speed;
      if(y > 465) {
        state = 3;
        y = 465;
      }
    }
    if(state == 3) {
      x = x -speed;
      if(x <400) {
        x = 400;
        state =0;
      }
    } 
  }
  
  
  
}
