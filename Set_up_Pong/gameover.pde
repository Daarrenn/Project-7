void gameover(){
  MUSIC.rewind();
  background(0);
  fill(255);
  textSize(60);
  text("Score: " +ponescore + " - " +ptwoscore, width/2, 100);
  
  if(ponescore == 5){
    text("Red wins!", width/2, 200);
  }
  if(ptwoscore == 5){
    text("Blue wins!", width/2, 200);
  }
  
  squareTactile(100, 350, 350, 500);
  rect(100, 350, 250, 150);
  stroke(0);
  squareTactile(450, 700, 350, 500);
  rect(450, 350, 250, 150);
  stroke(0);
  fill(0);
  textSize(40);
  text("New Game", 225, 425);
  text("Rage Quit", 575, 425);
}

void gameoverClicks(){
  if(mouseX > 100 && mouseX < 350 && mouseY > 350 && mouseY < 500){
    mode = INTRO;
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
    
    ponescore = 0;
    ptwoscore = 0;
  }
  if(mouseX > 450 && mouseX < 700 && mouseY > 350 && mouseY < 500){
    exit();
  }

}
