int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//moving parts
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld, bx, by; //ballllllllllllllllllllll
float m; // muliplyer ball spped

//keyboard
boolean wkey, skey, upkey, downkey;

//scoreeeeeeeeeeeeeeeeeeeeeeeeeeee
int ponescore;
int ptwoscore;
float countdown;

void setup() {
  size(800, 600);
  mode = GAME;
  textAlign(CENTER, CENTER);
  
  //paddles
  leftx = -10;
  lefty = height/2;
  leftd = 150;
  rightx = width+10;
  righty = height/2;
  rightd = 150;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  bx = 4;
  by = 0;
  m = 1;
  
  countdown = 180;
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
