int centerX, centerY, offset1, offset2, offset3;
//Intialalized our variables and now saying that our mario we made is now draw mario.
superMario drawMario;

void setup(){
  size(600,600);
  drawMario = new superMario();
}


void draw(){
 background(0,100,0);
 drawMario.display();
 drawMario.update();
}
//'' means the space bar key so if the space bar is pressed then he jumps.
void keyPressed(){
  if(key == ' '){
  if (drawMario.onGround){
    jump();
  }
}
}
void jump(){
  drawMario.velocityY = drawMario.jumpSize;
}
