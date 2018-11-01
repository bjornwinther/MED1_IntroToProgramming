class Background{
int stepX = 25;
int stepY = 25;
  
  void showFinishLine(){
    for(int x = 950 ; x < 975; x += stepX){ // makes first line of rectangles along y-aksis
      for(int y = 0; y < height; y += stepY) {
        if(y % 50 == 0) {
        stroke(0);
        fill(255);
        rect(x,y,stepX,stepY);
        }else {
        fill(0);
        rect(x,y,stepX,stepY);
        }
      }
    }
    for(int x = 975 ; x < width; x += stepX){ // makes second line of rectangles along y-aksis but starts at i=25 (forskudt).
      for(int y =25; y < height; y += stepY) {
        if(y % 50 == 0) {
        stroke(0);
        fill(0);
        rect(x,y,stepX,stepY);
        }else {
        fill(255);
        rect(x,y,stepX,stepY);
        }
      }
    }
  }
  
}
