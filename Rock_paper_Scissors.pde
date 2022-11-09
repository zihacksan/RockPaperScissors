
// Initialising Array
Button[] Button = new Button [4];
// int for choices
int rockChoice=0;
int paperChoice=0;
int scissorChoice=0;
boolean gameOver=false;
// Generates random number for computer
int computerChoice = int(random(1, 4));
// game state
boolean gameOn = true;


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
  println("computer's guess is: " + computerChoice);

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
    rockChoice=1;
  } else if (mouseX >= 250 && mouseX <= 250+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("paper chosen");
    paperChoice=1;
  }
  else if (mouseX >= 450 && mouseX <= 450+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("scissors chosen");
    scissorChoice=1;
  }
  // if user draws with computer
  if (rockChoice==1 && computerChoice==1) {
    println("you stupid!");
    endGame();
  }
  if (paperChoice==1 && computerChoice==2) {
    println("you stupid!");
    endGame();
  }
  if (scissorChoice==1 && computerChoice==3) {
    println("you stupid!");
    endGame();
  }
  // if user wins
  if (rockChoice==1 && computerChoice==3) {
    println("you stupid!");
    endGame();
  }
  if (paperChoice==1 && computerChoice==1) {
    println("you stupid!");
    endGame();
  }
  if (scissorChoice==1 && computerChoice==2) {
    println("you stupid!");
    endGame();
  }
  // if user loses
  if (rockChoice==1 && computerChoice==2) {
    println("you stupid!");
    endGame();
  }
  if (paperChoice==1 && computerChoice==3) {
    println("you stupid!");
    endGame();
  }
  if (scissorChoice==1 && computerChoice==1) {
    println("you stupid!");
    endGame();
  }

}




 
  


  
