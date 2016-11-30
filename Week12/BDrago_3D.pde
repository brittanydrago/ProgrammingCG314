//BrittanyDrago
//Classwork with Peter

PShape star;
float rotation = PI/50;
float r, g, b;

void setup() {
  size(800, 600, P3D);
  star = createShape();
  star.beginShape();
  star.fill(#93F794);
  star.noStroke();

  //Vertex
  star.vertex(0, -50);
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape(CLOSE);
}
void mousePressed() { //Alternate Backgrounds
  if (mousePressed);
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  background(r, g, b);
}

void draw() {
  camera(mouseX, height/2, (height/2) / tan(PI/6), mouseY, height/2, 0, 0, 1, 0);

  //background(0);
  background(r, g, b);
  translate(mouseX, mouseY);
  rotateY(PI/8);
  rotateX(rotation*.3);
  rotateY(rotation);

  shape(star);
  rotation+= PI/50;
}