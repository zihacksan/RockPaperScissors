
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
  // color of background
  background(10,20,100);
  // size of window
  size(600,600);
  // button objects declared
  Button[0] = new Button(50, 400, 100, 100, color(10,20,100));
  Button[1] = new Button(250, 400, 100, 100, color(10,20,100));
  Button[2] = new Button(450, 400, 100, 100, color(10,20,100));
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
  if (mouseX >= 50 && mouseX <= 50+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("rock chosen");
    rockChoice=true;
  } else if (mouseX >= 250 && mouseX <= 250+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("paper chosen");
    paperChoice=true;
  }
  else if (mouseX >= 450 && mouseX <= 450+100 && mouseY >= 400 && mouseY <= 400+100) {
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



 
  


  