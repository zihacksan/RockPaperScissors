// Font variable
PFont r;
// Initialising Array
Button[] Button = new Button [3];
// checking if mouse clicked on button
boolean rectOver = false;
// win counter
int winCounter = 0;

void setup() {
  // size of window
  size(600,600);
  // button objects declared
  Button[0] = new Button(100, 400, 50, 50);
  Button[1] = new Button(300, 400, 50, 50);
  Button[2] = new Button(500, 400, 50, 50);
  // color of background
  background(22,33,244);
  // styling the font of text
  r = createFont("Ariel", 30);
  
}


void draw() {
  // goes through array indices 0,1,2 
  for (int i=0; i < 3; i++) {
  // displaying the instances of object button
  //Button[0].display();
  //Button[1].display();
  //Button[2].display();
  Button[i].display();
  }
  textFont(r);
  textAlign(CENTER);
  text("rock, paper, or scissors?",width/2,150);
  text("rock",100,350);
  text("paper",300,350);
  text("scissors",500,350);
}