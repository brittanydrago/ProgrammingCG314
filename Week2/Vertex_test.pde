//BrittanyDrago
//TEST

void setup() {
  size(450, 550);
  background (160, 2550, 203);
}

void draw() {
  //Heart
  fill(255, 60, 85);
  noStroke();
  beginShape();
  vertex(200, 200);
  vertex(225, 225);
  vertex(250, 200);
  vertex(300, 200);
  vertex(325, 225);
  vertex(325, 275);
  vertex(300, 325);
  vertex(250, 350);
  vertex(225, 360);
  vertex(150, 325);
  vertex(125, 275);
  vertex(125, 225);
  vertex(150, 200);
  vertex(200, 200);
  endShape();

  //Mouth
  noFill();
  stroke(0);
  curve(150, 250, 200, 290, 250, 290, 300, 250);
  //Eyes
  fill(0);
  noStroke();
  //LeftEye
  ellipse(175, 250, 5, 5);
  //RightEye
  ellipse(275, 250, 15, 15);
}

void mousePressed() {
PFont font;
  font = loadFont("FranklinGothic-Book-20.vlw");
  textFont(font, 20);
  text("it me", 5, 20);
}

void keyPressed()  {
 PFont font;
  font = loadFont("FranklinGothic-Book-20.vlw");
  textFont(font, 20);
  text("dat hart", 375, 545);
}