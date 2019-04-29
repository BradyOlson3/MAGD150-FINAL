//Declaring images and sounds
PImage img;
import processing.video.*;
import processing.sound.*;
Capture video;
SoundFile file;
//Loading images
void setup(){
 size(500,500);
 file = new SoundFile(this,"oh-my-god-1.wav");
 video = new Capture(this,640,480);
 video.start();
 img = loadImage("Image-1.png");
 file.play();
}
void capturEvent(Capture video){
  video.read();
}
//Showing background and tint.
void draw(){
  background(255);
  tint(255);
  //Images placed in different spots
  image(img, 150 ,0, width/3,height/3);
  image(video, 0,0, width/3,height/3);
}
