// superclass for button
class Button {
  // variables of class
  int rectX;
  int rectY;
  int rectW;
  int rectH;
  color rectC;
  
  // constructor 
  Button(int rectX_,  int rectY_, int rectW_, int rectH_, color rectC_) {
    rectX = rectX_;
    rectY = rectY_;
    rectW = rectW_;
    rectH = rectH_;
    rectC = rectC_;
  }
  // function to display rect object
  void display() {
    noStroke();
    fill(rectC);
    rect(rectX, rectY, rectW, rectH);
    
  }
}