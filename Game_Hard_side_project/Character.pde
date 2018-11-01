class CharPlay {
  
  float charX = 10;
  float charY = 475;
  float charSizeX = 25;
  float charSizeY = 25;
  
  float charSpeed = 2;
  float gravity = .5;
  float ground = 500;
  float jumpSpeed = 5;
  
  float finishLine = 990;
  
  boolean collision = false;
  
  void showChar(){
    stroke(0);
    fill(0,255,0);
    rect(charX,charY,charSizeX,charSizeY);
  }
  
  void checkLife() {
   if(life == 0) {
    fill(200,50,0);
    text("gameOver", width/2, height/2);
    level = 0;
    life = 3;
   }
  }
  
  void checkFinish() {
    if(player.charX > finishLine) {
     text(level + " Level completed", width/2,height/2);
     level = level +1; 
     player.charX = 0;
    }
  }
  
  void move() {
   if(keyPressed) {
    if(keyCode == RIGHT){
      charX = charX + charSpeed;
      if(charX > width) {
        charX = 0;
      }
    }
    if(keyCode == LEFT) {
     charX = charX - charSpeed; 
     if(charX < 0) {
      charX = 0; 
     }
    }
    if(keyCode == SHIFT) { // fix jump function
      charY = charY - jumpSpeed;
      if(charY < ground) {
        jumpSpeed = jumpSpeed * gravity;
      }
    }
   }
  }
  
  
}
