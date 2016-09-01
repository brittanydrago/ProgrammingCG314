//BrittanyDrago
//CG-314
//Week_1
//Homework_1

int colW = 255;
int colB = 0;

void setup() {
  size(600, 480);
  smooth();
}

void draw() {
  background(255, 255, 255);
  fill(colB);
  noStroke();
  triangle(0, 0, 0, 480, 640, 480);
  //MiddleTriangleBox
  fill(colW);
  triangle(width/2.8, height/3, width/2.8, 275, 365, 275);
  fill(colB);
  triangle(width/2.8, height/3, 365, 160, 365, 275);
  //StationaryCircles
  stroke(25, 255, 5);
  fill(colB);
  ellipse(475, 125, 100, 100);
  fill(colW);
  ellipse(125, 350, 100, 100);

  //Circle Changes Color When Mouse Button Is Pressed
  if (mousePressed) {
    fill(255);
  } else {
    fill(0);
  }
  //Circle Follows Mouse Location
  ellipse(mouseX, mouseY, 100, 100);
}
