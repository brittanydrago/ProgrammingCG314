//BrittanyDrago
//Robot

//Variables
color w = color(255);
color b = color(0);
color body = color(255, 60, 85);
color background = color(160, 255, 203);
int x = 200;
int y = 200;

void setup() {
  size(450, 550);
  background (background);

  //Background_Design
  stroke(w);
  for (int i = 10; i <400; i +=10) {
    line(i, 550, i*5, 10);
  }
}

void draw() {

  //Heart

  //Arms
  strokeWeight(1);
  line(x+150, y+125, x+50, y+25);
  line(x-100, y+125, x-50, y+75);

  //Legs
  line(x+50, y+125, x+75, y+200);
  line(x, y+125, x-25, y+200);

  fill(body);
  noStroke();
  beginShape();
  vertex(x, x);
  vertex(x+25, y+25);
  vertex(x+50, y);
  vertex(x+100, y);
  vertex(x+125, y+25);
  vertex(x+125, y+75);
  vertex(x+100, y+125);
  vertex(x+50, y+150);
  vertex(x+25, y+160);
  vertex(x-50, y+125);
  vertex(x-75, y+75);
  vertex(x-75, y+25);
  vertex(x-50, y);
  vertex(x, y);
  endShape();

  //Eyes
  fill(b);
  noStroke();
  //LeftEye
  ellipse(175, 250, 10, 10);
  //RightEye
  ellipse(275, 250, 15, 15);

  //Mouth
  noFill();
  stroke(0);
  strokeWeight(2);
  curve(150, 250, 200, 290, 250, 290, 300, 250);
}

//Text
void mousePressed() {
  PFont font;
  font = loadFont("SansSerif-20.vlw");
  textFont(font, 20);
  text("it me", 5, 20);
}

void keyPressed() {
  PFont font;
  font = loadFont("SansSerif-20.vlw");
  textFont(font, 20);
  text("dat hart", 375, 545);
}