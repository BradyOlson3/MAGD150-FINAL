//class of mario is determined here
class superMario{
  float centerX, centerY, offset1, offset2, offset3;
  float jumpSize,  velocityY, gravity;
 boolean onGround;

  superMario(){
  centerX = 300;
  centerY = 300;
  offset1 = 15;
  offset2 = 15;
  offset3 = 10;
velocityY = 0.0; 
gravity = 1.5;
 onGround = false;
jumpSize = -30; 
  }
  
  void update(){
   velocityY = gravity + velocityY;
  centerY = velocityY + centerY;
  if (centerY + 10 >= (height/2)){
    centerY = (height/2) - 10;
    onGround = true;
  } else {
    onGround = false;
  }
  }
 

  
  void display(){
  rectMode(CENTER);
  fill(0, 0, 255);
  rect(centerX, centerY, 50, 30);
  fill(255,0,0);
  rect(centerX,centerY-offset2,20,20);
  fill(255,255,0);
  rect(centerX - offset3,centerY,8,8);
  rect(centerX + offset3,centerY,8,8);
  fill(255,218,185);
  rect(centerX+offset1, centerY+offset2, 20, 20);
  rect(centerX-offset2, centerY+offset2, 20, 20);
  
}
}
