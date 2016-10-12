//BrittanyDrago
//Robot_functions

//Audio
import processing.sound.*;
SoundFile file;

//Variables
float x, y;
float size = 100;
float green = 255;
float angle = 0.0;
float xOffset;
float yOffset;
float scalar = 50;
float speed = 0.3;
float diameter = 50;
float r, g, b;

void setup () {
  size (640, 480);
  smooth();
  frameRate(25);
  xOffset = width/2;
  yOffset = height/2;
  
  //Load sound file (data folder)
  file = new SoundFile(this, "Robot.mp3");
  file.play();
}

void draw () {
  drawRobot();
}
//Robot function
void drawRobot() {
  float x = xOffset + sin(angle) * scalar;
  float y = yOffset + cos(angle) * scalar-50;
  background (#BFFFEB);
  stroke(#00899D);
  strokeWeight(8);
  line(x-50, y, x, y + 75);
  line(x+50, y, x, y + 75);
  noStroke();
  fill(#00AFCB);
  rect(x-diameter, y+50, 2*diameter, 100); //Body
  ellipse(x-50, y, diameter, diameter); //Eyes
  ellipse(x+50, y, diameter, diameter);
  fill(#BFFFEB); //Eyes
  ellipse(x-50, y, 25, 25);
  ellipse(x+50, y, 25, 25);
  fill(#BFFFEB); //Mouth
  rect(x-diameter+10, y+110, diameter/3, 20);
  rect(x-diameter+43, y+110, diameter/3, 20);
  rect(x-diameter+75, y+110, diameter/3, 20);

  //Movement
  angle+=speed;

  if (keyPressed) {
    if (key == ' ') {
      r = random(0, 255);
      g = random(0, 255);
      b = random(0, 255);
      background (r, g, b);
    }
  }
}