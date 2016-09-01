void setup() {
  size(640, 480);
  smooth();
}

void draw() {
  background(255, 255, 255);
  fill(0, 0, 0);
  noStroke();
  triangle(0, 0, 0, 480, 640, 480);
  stroke(25, 255, 5);
  fill(0, 0, 0);
  ellipse(475, 125, 100, 100);
  fill(255, 255, 255);
  ellipse(150, 350, 100, 100);
  line(0, 0, 640, 480);

  if (mousePressed) {
    fill(255);
  } else {
    fill(0);
  }
  ellipse(mouseX, mouseY, 100, 100);
}
