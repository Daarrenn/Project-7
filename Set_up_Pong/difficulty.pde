void difficulty() {
  
  fill(255);
  squareTactile(50, 230, 270, 370);
  rect(50, 270, 180, 100);
  squareTactile(570, 750, 270, 370);
  rect(570, 270, 180, 100);
  squareTactile(310, 490, 270, 370);
  rect(310, 270, 180, 100);
  
  textSize(70);
  text("difficulty:", 400, 240);
  
  textSize(30);
  fill(0);
  text("easy", 140, 320);
  text("hard", 400, 320);
  text("insane", 660, 320);

}

void difficultyClicks(){
  if(mouseX > 50 && mouseX < 230 && mouseY > 270 && mouseY < 370){
    hard = 4;
    mode = GAME;
  }
  if(mouseX > 310 && mouseX < 490 && mouseY > 270 && mouseY < 370){
    hard = 7;
    mode = GAME;
  }
  if(mouseX > 570 && mouseX < 750 && mouseY > 270 && mouseY < 370){
    hard = 10;
    mode = GAME;
  }
}
