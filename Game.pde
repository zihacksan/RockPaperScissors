// Font variable
PFont r;

void displayGame() {
  textFont(r);
  textAlign(CENTER);
  fill(255);
  text("rock, paper, or scissors?",width/2,150);
  text("rock",100,375);
  text("paper",300,375);
  text("scissors",500,375);
  

}

void endGame() {
 exit();
}