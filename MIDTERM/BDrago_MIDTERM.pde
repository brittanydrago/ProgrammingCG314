//BrittanyDrago
//Midterm_ColoringPages

//Variables
PImage pic1;
PImage pic2;
PImage pic3;
PImage pic4;
color colorSelected;
int brushSize = 20;

void setup() {
  size(570, 550);
  background(200);

  //Bounding Box
  fill(255);
  stroke(0);
  rect(25, 25, 520, 425);

  //Loading Pictures
  pic1 = loadImage("book.jpg");
  pic2 = loadImage("book2.png");
  pic3 = loadImage("book3.jpg");
  pic4 = loadImage("book4.jpg");
}

void draw() {

  //Text Directions
  textSize(20);
  fill(0);
  text("Press 1-4 to select coloring page!", 10, 470);
  text("Right click to select color!", 10, 495);
  text("Press + or - to change brush size!", 10, 520);
  text("Press space for a blank page!", 10, 545);
  text("color!", 510, 485);

  //Key Pressing Statements
  if (keyPressed && key == ' ') { //Clear
    fill(200);
    noStroke();
    rect(0, 0, 570, 550);
    fill(255);
    stroke(0);
    rect(25, 25, 520, 425);
  } else if (keyPressed && key == '1') {
    fill(200);
    noStroke();
    rect(0, 0, 570, 550);
    fill(255);
    stroke(0);
    rect(25, 25, 520, 425);
    image(pic1, 0, 0);
  } else if ( keyPressed && key == '2') {
    fill(200);
    noStroke();
    rect(0, 0, 570, 550);
    fill(255);
    stroke(0);
    rect(25, 25, 520, 425);
    image(pic2, 0, 0);
  } else if ( keyPressed && key == '3') {
    fill(200);
    noStroke();
    rect(0, 0, 570, 550);
    fill(255);
    stroke(0);
    rect(25, 25, 520, 425);
    image(pic3, 0, 0);
  } else if ( keyPressed && key == '4') {
    fill(200);
    noStroke();
    rect(0, 0, 570, 550);
    fill(255);
    stroke(0);
    rect(25, 25, 520, 425);
    image(pic4, 0, 0);
  }

  //Color Preview Box
  fill(colorSelected);
  rect(510, 490, 50, 50);

  //Adjusting the Brush Size
  if (keyPressed) {
    if (key == '+') {
      brushSize = brushSize + 5;
    }
    if (key == '-') {
      brushSize = brushSize - 5;
    }
  }

  //Color Picker
  if (mousePressed == true && mouseButton == RIGHT&& mouseY< 474 ) {
    colorSelected = get(mouseX, mouseY);
  } else if (mouseButton == LEFT && mousePressed) {
    fill(colorSelected);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize); //Cursor
  }
}