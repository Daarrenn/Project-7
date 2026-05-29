void intro(){
  background(0);
  textFont(airStrike);
  strokeWeight(5);
  squareTactile(20, 340, 400, 580);
  rect(20, 400, 320, 180);
  fill(0);
  textSize(50);
  text("single", 180, 455);
  text("player", 180, 525);
  fill(255);
  stroke(255);
  squareTactile(460, 780, 400, 580);
  rect(460, 400, 320, 180);
  fill(0);
  text("two", 620, 455);
  text("players", 620, 525);

  fill(255);
  textSize(200);
  text("PONG!", width/2, height/5);
}

void introClicks(){
  if(mouseX > 20 && mouseX < 340 && mouseY > 400 && mouseY < 580){
    mode = DIFFICULTY;
    ai = true;
  }
  if(mouseX > 460 && mouseX < 780 && mouseY > 400 && mouseY < 580){
    ai = false;
    mode = GAME;
  }
}
