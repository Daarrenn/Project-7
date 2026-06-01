void game(){
  background(0);
  
  MUSIC.play();
  
  fill(255);
  stroke(255);
  textSize(50);
  text(ponescore, width/4, height/6);
  text(ptwoscore, width*3/4, height/6);
  
  //counter
  countdown = countdown - 1;
  
  
  
   //ball move
   fill(255);
   if(countdown < 0){
   ballx = ballx-bx;
   bally = bally-by;
   }
   
 
  //move paddles
  if(lefty>=0){
    if(wkey == true) lefty = lefty - 10;
  }
  if(lefty<=height){
    if(skey == true) lefty = lefty + 10;
  }
  
  if(ai == false){
  if(righty>=0){
    if(upkey == true) righty = righty - 10;
  }
  if(righty<=height) {
    if(downkey == true) righty = righty + 10;
  }
  }
  
  if(ai == true){
    if(bally > righty) {
      righty = righty + hard;
    }
    if(bally < righty) {
      righty = righty - hard;
    }
  }
  
  //paddles
  
  fill(255, 0, 0);
  circle(leftx, lefty, leftd);
  fill(0, 0, 255);
  circle(rightx, righty, rightd);
  fill(255);
  
  //ball
  circle(ballx, bally, balld);
  
  //counter
  
  fill(0);
  if(countdown < 181 && countdown > 120) {
    text("3", width/2, height/2);
  }
  if(countdown < 121 && countdown > 60) {
    text("2", width/2, height/2);
  }
  if(countdown < 61 && countdown > 0) {
    text("1", width/2, height/2);
  }
  
  
  //score
  
  if(ballx < balld/2) {
    ptwoscore = ptwoscore + 1;
    ballx = width/2;
    bally = height/2;
    countdown = 180;
    bx = 3;
    by = 0;
    m = 1;
  
  }
  if (ballx > width-balld/2) {
    ponescore = ponescore + 1;
    ballx = width/2;
    bally = height/2;
    countdown = 180;
    bx = -3;
    by = 0;
    m = 1;
  }
  
  //top bottom walls
  if(bally < balld/2 || bally > height-balld/2) {
    by = by * -1;
  }
  
  if(bally < balld/2) {
    bally = balld/2;
  }
  
  if(bally > height-balld/2) {
    bally = height-balld/2;
  }
  
  //boing
  if(dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) { 
  bx = ((leftx-ballx)/10)*m;
  by = ((lefty-bally)/10)*m;
  m = m + 0.1;
  }
  if(dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) { 
  bx = ((rightx-ballx)/10)*m;
  by = ((righty-bally)/10)*m;
  m = m + 0.1;
  }
  
  //ending game
  if(ponescore == 5){
    mode = GAMEOVER;
  }
  if(ptwoscore == 5){
    mode = GAMEOVER;
  }
  
}

void gameClicks(){
   mode = PAUSE; 
}
