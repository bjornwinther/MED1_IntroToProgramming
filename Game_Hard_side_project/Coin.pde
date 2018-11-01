class Coin {
  
  float x;
  float y = 490; 
  float radius = 15;
  
  float speed;
  int state;
  int yellow = #FBFF2E;
  
  Coin(float tempX) {
    x = tempX;
    
    // check if you ca put showCoin-method inb constructor.
   
  }
  
  //use for loop when creating objects instead!!!! in main method
  void showCoin() {
    fill(yellow);
     ellipse(x,y,radius,radius);
   } 
  
  
  void checkCollision() { // fix hitbox for circle coin and add dissapear effect 
   if(dist(player.charX, player.charY, x, y) < radius) { // fix hitbox...
     score ++;
     fill(0); // temporary dissapear effect
     
     // add jump/dissapear effect and sound, when coin is touched by player.
    
    }
  }
  
}
