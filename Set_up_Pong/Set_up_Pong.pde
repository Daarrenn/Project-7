int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int DIFFICULTY = 4;

color tactileColour = #FF0000;

//moving parts
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld, bx, by; //ballllllllllllllllllllll
float m; // muliplyer ball spped

//keyboard
boolean wkey, skey, upkey, downkey;

//robot
boolean ai;
float hard;

//scoreeeeeeeeeeeeeeeeeeeeeeeeeeee
int ponescore;
int ptwoscore;
float countdown;

//text
PFont airStrike;

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  airStrike = createFont("airstrike.ttf", 100);
  
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
  } else if (mode == DIFFICULTY){
    difficulty();
  } else {
    println("oh no" + mode);
  }
}

void squareTactile(int x, int x2, int y, int y2) {
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(tactileColour);
  } else {
    stroke(0);
  }
}
