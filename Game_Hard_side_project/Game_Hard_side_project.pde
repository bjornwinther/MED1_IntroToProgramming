//Buttons at startMenu:
Button playButton = new Button(450,225,100,50,"Play");
Button upgradeButton = new Button(460,300,80,40,"Upgrade");
Button backButton = new Button (100,400,30,30,"back");
// PlayerObject:
CharPlay player = new CharPlay();
// coin object:
Coin [] coins = new Coin[10];

Coin coinTest = new Coin(75);

// level 1 objects:
Obstacle obs = new Obstacle(300,465,35,35,2);
//Level 2 objects:
Obstacle obs2 = new Obstacle(400,465,35,35,3);
Obstacle obs3 = new Obstacle(500,465,35,35,4);
Obstacle obs4 = new Obstacle(600,465,35,35,5);
Obstacle obs5 = new Obstacle(700,465,35,35,6);
//level 3 objects: 
Obstacle obs6 = new Obstacle(400,465,35,35,3);
Obstacle obs7 = new Obstacle(500,400,35,35,3);
Obstacle obs8 = new Obstacle(600,465,35,35,3);
Obstacle obs9 = new Obstacle(700,350,35,35,3);

Background b = new Background();

int level = 0;
int life = 3;
int score = 0;
int n_coins = coins.length;
float coinSpace = 50;


void setup() {
  size(1000,500);
  for(int i = 0; i < coins.length; i++) { // loops through and creates objects of coin.
    coins[i] = new Coin(100 + coinSpace);
    coinSpace += 75;
  }
}

void draw() {

 if (level == 0){
   startMenu();
 }
 else if(level == -1) {
   upgradeMenu();
 }
 else if(level == 1) {
   everyLevel();
   level1();
   coinTest.showCoin(); // just testing the hitbox method on a single object.
   coinTest.checkCollision();
 }
 else if(level == 2) {
   everyLevel();
   level2();
 }
 else if(level == 3) {
   everyLevel();
   level3();
 }
 
}

void startMenu() {
  background(0);
  playButton.showButton();
  playButton.checkPlay();
  //upgradeButton.showButton();  // fix this bug
  //upgradeButton.checkUpgrade();
}

void upgradeMenu(){
  background(0);
  text("Upgrades",500,100);
  backButton.showCircleButton();
  backButton.checkBack();
}

void everyLevel() {
 background(0);
 text("Level " + level, 10, 25);
 text("Lives " + life, 10, 40);
 text("Score " + score, 10, 55);
 b.showFinishLine();
 player.showChar();
 player.move();
 player.checkFinish();
 player.checkLife();
 for(int i = 0; i < coins.length; i++) {
   coins[i].showCoin();
   coins[i].checkCollision(); // fix collision detection.
 }
}

void level1() {
 obs.showObstacle();
 obs.moveObstacleInCircle();
 obs.checkCollision();
}

void level2() {
   obs2.showObstacle();
   obs2.moveUpDown();
   obs2.checkCollision();
   obs3.showObstacle();
   obs3.moveUpDown();
   obs3.checkCollision();
   obs4.showObstacle();
   obs4.moveUpDown();
   obs4.checkCollision();
   obs5.showObstacle();
   obs5.moveUpDown();
   obs5.checkCollision();
}

void level3() {
  obs6.showObstacle();
  obs6.moveObstacleInCircle();
  obs6.checkCollision();
  
  obs7.showObstacle();
  obs7.moveUpDown();
  obs7.checkCollision();
  
  obs8.showObstacle();
  obs8.moveObstacleInCircle();
  obs8.checkCollision();
  
  obs9.showObstacle();
  obs9.moveUpDown();
  obs9.checkCollision();
}
