// superclass for button
class Button {
  // variables of class
  int rectX;
  int rectY;
  int rectW;
  int rectH;
  
  // constructor 
  Button(int rectX_,  int rectY_, int rectW_, int rectH_) {
    rectX = rectX_;
    rectY = rectY_;
    rectW = rectW_;
    rectH = rectH_;
  }
  // function to display rect object
  void display() {
    rectMode(CENTER);
    fill(222,233,55);
    rect(rectX, rectY, rectW, rectH);
    
  }
}