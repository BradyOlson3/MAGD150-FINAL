//importing fonts

PFont timesNEW, myFont;
import processing.pdf.*;


void setup(){
  size(640,420);
  //Setting up how to record it as a PDF.
  beginRecord(PDF, "everything.pdf");
  background(32);
  noStroke();
  //Declaring my fonts.
  timesNEW = createFont("Times New Roman" , 18);
  myFont = createFont("Georgia" , 18);
  fill(0,0,255);
  textAlign(CENTER,CENTER);
  textFont(myFont);
  text("THE AVENGERS ENDGAME.", 200 , 200);
  textAlign(LEFT,CENTER);
  textFont(timesNEW);
  textSize(30);
  fill(255,0,0);
  text("ONE LAST STAND.", 100, 100);
  
}

void draw() {
  fill(32, 10);
  rect(0, 0, width, height);
  //Seperating objects using push and pop matrix.
  pushMatrix();
  translate(width / 2.0, height / 2.0);
  rotate(frameCount / 90);
  fill(255,0,0);
  textSize(18);
  text("THE AVENGERS ENDGAME", 0, 0);
  popMatrix();
}
void keyPressed(){
  if (key=='r'){
    endRecord();
    exit();
  }
}
