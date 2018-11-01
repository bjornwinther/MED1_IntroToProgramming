class Button {
 
  float x;
  float y;
  float sizeX;
  float sizeY;
  String instruction;
  int redColor = #FF0825;
  int greenColor = #40FF55;
  
  Button(float temp_x, float temp_y, float temp_sizeX, float temp_sizeY, String temp_instruction) {
    x = temp_x;
    y = temp_y;
    sizeX = temp_sizeX;
    sizeY = temp_sizeY;
    instruction = temp_instruction;
  }
  
  void showButton() {
   rect(x,y,sizeX,sizeY);
   fill(255);
   text(instruction,x + 25,y + 25);
  }
  
  void showCircleButton() {
    ellipse(x,y,sizeX,sizeY);
    text(instruction,x,y);
  }
  
  void checkPlay() {
    if(mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) {
      fill(greenColor); //fix the color issue when mouse hovers on all methods.
      if(mousePressed) {
        level = 1;
      } 
     }else{ 
       fill(redColor);
     }
    }
    
    void checkUpgrade() {
    if(mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) {
      fill(greenColor);
      if(mousePressed) {
        level = -1;
      } 
     }else{ 
       fill(redColor);
     }
    }
    
    void checkBack() {
    if(mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) { //fix hitbox circle
      fill(greenColor);
      if(mousePressed) {
        level = 0;
      } 
     }else{ 
       fill(redColor);
     }
    }
  
  
  
  
}
