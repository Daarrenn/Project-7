int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//moving parts
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld, bx, by; //ballllllllllllllllllllll

//keyboard
boolean wkey, skey, upkey, downkey;

void setup() {
  size(800, 600);
  mode = GAME;
  
  //paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  bx = 1;
  by = 1;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==  PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("oh no" + mode);
  }
}
