//Listing and declaring all the Vectors here
PVector ellipseCenter;
PVector squareCenter;
PVector circleCenter;
PVector triangleCenter;
PVector bigCenter;
PVector biggerCenter;

void setup(){
  size(400,400);
  ellipseCenter = new PVector(100,100);
  triangleCenter = new PVector(200,100);
  bigCenter = new PVector (300, 200);
  biggerCenter = new PVector(200,300);
  squareCenter = new PVector(200,200);
  circleCenter = new PVector(300,300);
  //Intializing the array numbers and delcaring what number is what.
  int [] numbers = new int [4];
  numbers[0] = 10;
  numbers[1] = 20;
  numbers[2] = 30;
  numbers[3] = 40;
  println(numbers.length);
  println(numbers[3]);
}
void draw(){
  background(34,139,34);
  fill(255,255,0);
  //Using the vectors within the ellipse of each shape.
  ellipse(ellipseCenter.x, squareCenter.y, 40, 40);
  ellipse(ellipseCenter.x, circleCenter.y, 40,40);
  ellipse(triangleCenter.x, bigCenter.y, 40, 40);
  ellipse(triangleCenter.x, biggerCenter.y, 40,40);
  //Push matrix and pop matrix help you use each shape and are able to use transformations.
  pushMatrix();
  translate(30,130);
  rect(100,100,40,40);
  popMatrix();
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/3.0);
  rect(-50, -80, 40, 40);
  popMatrix();
  pushMatrix();
  rect(30, 20, 50, 50);
  scale(0.5);
  rect(30, 20, 50, 50);
  popMatrix();
}
