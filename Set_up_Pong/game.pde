void game(){
  background(0);
  
   //ball move
   ballx = ballx-bx;
   bally = bally-by;
   
    
  //move paddles
  if(wkey == true) lefty = lefty - 5;
  if(skey == true) lefty = lefty + 5;
  if(upkey == true) righty = righty - 5;
  if(downkey == true) righty = righty + 5;
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //ball
  circle(ballx, bally, balld);
  
  
  //wall boing
  
  if(ballx < balld/2 || ballx > width-balld/2) {
    bx = bx * -1;
  }
  if(bally < balld/2 || bally > height-balld/2) {
    by = by * -1;
  }
  
  //boing
  if(dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) { 
  }
}

void gameClicks(){
  
}
