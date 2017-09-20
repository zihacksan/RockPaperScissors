
// Initialising Array
Button[] Button = new Button [3];
// boolean for choices
boolean rockChoice=false;
boolean paperChoice=false;
boolean scissorChoice=false;
boolean gameOver=false;
// randomiser of choices
String[] choices = {"rock", "paper", "scissors"};
int index = int (random(choices.length));
// game state
boolean gameOn = false;


void setup() {
  background(10,20,100);
  // size of window
  size(600,600);
  // button objects declared
  Button[0] = new Button(75, 400, 50, 50, color(255));
  Button[1] = new Button(275, 400, 50, 50, color(255));
  Button[2] = new Button(475, 400, 50, 50, color(255));
  // color of background
  //background(0);
  // styling the font of text
  r = createFont("Ariel", 30);
  // print computers random guess for testing
  println("computer's guess is: " + choices[index]);
  
}


void draw() {
  // loop goes through array indices 0,1,2 
  for (int i=0; i < 3; i++) {
  // displaying the instances of object button
  Button[i].display();
  }
  displayGame();
  
}
void mousePressed() {
  // is mouse clicking inside a button
  if (mouseX >= 75 && mouseX <= 75+50 && mouseY >= 400 && mouseY <= 400+50) {
    println("rock chosen");
    rockChoice=true;
  } else if (mouseX >= 275 && mouseX <= 275+50 && mouseY >= 400 && mouseY <= 400+50) {
    println("paper chosen");
    paperChoice=true;
  }
  else if (mouseX >= 475 && mouseX <= 475+50 && mouseY >= 400 && mouseY <= 400+50) {
    println("scissors chosen");
    scissorChoice=true;
  }
  // if user draws with computer
  if (rockChoice && choices[index]=="rock") {
    println("you drew!");
    endGame();
  }
  if (paperChoice && choices[index]=="paper") {
    println("you drew!");
    endGame();
  }
  if (scissorChoice && choices[index]=="scissors") {
    println("you drew!");
    endGame();
  }
  // if user wins
  if (rockChoice && choices[index]=="scissors") {
    println("you WON!");
    endGame();
  }
  if (paperChoice && choices[index]=="rock") {
    println("you WON!");
    endGame();
  }
  if (scissorChoice && choices[index]=="paper") {
    println("you WON!");
    endGame();
  }
  // if user loses
  if (rockChoice && choices[index]=="paper") {
    println("you lose!");
    endGame();
  }
  if (paperChoice && choices[index]=="scissors") {
    println("you lose!");
    endGame();
  }
  if (scissorChoice && choices[index]=="rock") {
    println("you lose!");
    endGame();
  }

}


 
  


  