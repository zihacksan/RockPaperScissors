// Font variable
PFont r;
// match img to variable name
PImage rock;
PImage paper;
PImage scissors;
void displayGame() {
  // styling the font of text
  r = createFont("Ariel", 40);
  textFont(r);
  textAlign(CENTER);
  fill(255);
  
  // text locations
  text("rock, paper, or scissors?",width/2,150);
  text("rock",100,375);
  text("paper",300,375);
  text("scissors",500,375);
  
  // load img(s) from "data" folder
  rock = loadImage("rock.png");
  paper = loadImage("paper.png");
  scissors = loadImage("scissors.png");
  // img locations
  image(rock, 50, 400, 100, 100);
  image(paper, 250, 400, 100, 100);
  image(scissors, 450, 400, 100, 100);


}

void endGame() {
 exit();
}