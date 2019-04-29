void setup() {
  size(600,400);
  background(0);
  textSize(20);
  
}
void draw(){
  fill(255);
  text("Portal Button", 190,120);

  if(mouseX>200 && mouseY>105 && mouseX<300 && mouseY<180 && mousePressed==true){
    fill(255,93,0);
    ellipse(250,150,100,50);
 }
  else if(mouseX>150 && mouseY>105 && mouseX<350 && mouseY<180){
    fill(0,162,255);
    ellipse(250,150,100,50);
  }
  else{
    fill(0,101,255);
    ellipse(250,150,100,50);
  } 
 
  fill(255);
  text("Portal Button", 190,120);
  text("Square Button", 190,290);

  if(mouseX>200 && mouseY>285 && mouseX<300 && mouseY<340 && mousePressed==true){
    fill(255,93,0);
    rect(200,300,100,50);
 }
  else if(mouseX>200 && mouseY>280 && mouseX<300 && mouseY<340){
    fill(0,162,255);
    rect(200,300,100,50);
  }
  else{
    fill(0,101,255);
    rect(200,300,100,50);
  } 
 }
