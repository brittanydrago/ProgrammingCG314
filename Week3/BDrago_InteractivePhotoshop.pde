//BrittanyDrago
//Week3 - Interactive Photoshop

//Variables
int xMin = 45;
int xMax = 350;
int yMin = 50;
int yMax = 300;

int a = 25;
int b = 330;
int xy = 50;

color p = color(254, 183, 242);
color g = color(178, 255, 178);
color c = color(165, 219, 253);

PFont font;
String directions = "Press & hold the corresponding keys to draw";
String clear = "Press the '0' key to clear the screen";

void setup() {
  size(400, 400);
  background(255);
  fill(225);
  noStroke();
  rect(25, 25, 350, 300);

  //"Button" Graphics
  noFill();
  noStroke();
  fill(p);
  ellipse(a+25, b+25, xy, xy);
  fill(g);
  ellipse(a+85, b+25, xy, xy);
  fill(c);
  ellipse(a+145, b+25, xy, xy);
  fill(p);
  rect(a+180, b, xy, xy);
  fill(g);
  rect(a+240, b, xy, xy);
  fill(c);
  rect(a+300, b, xy, xy);

  //Text
  fill(0);
  text(directions, 75, 20);
  text(clear, 100, 395);

  font = createFont("AppleSDGothicNeo-Thin", 50);
  textFont(font);
  text("A", a+10, b+45);
  text("B", a+70, b+45);
  text("C", a+125, b+45);
  text("D", a+190, b+45);
  text("E", a+250, b+45);
  text("F", a+310, b+45);
}

void draw() {
  //Drawing shapes on the canvas
  if ((mouseX >xMin)&&(mouseX < xMax)) {
    if ((mouseY >yMin)&&(mouseY<yMax)) {
      //Draw a black line
      if (mousePressed) {
        stroke(0);
        strokeWeight(3);
        line(mouseX, mouseY, pmouseX, pmouseY);
      } else {
        //Clear Canvas
        noStroke();
        if (keyPressed) {
          if ((key=='0')) {
            fill(225);
            rect(25, 25, 350, 300);
          } else {
            //Key A = pink circle
            if (keyPressed) {
              if ((key=='a')  ||  (key=='A')) {
                fill(p);
                ellipse(mouseX, mouseY, 25, 25);
              } else {
                //Key B = green circle
                if (keyPressed) {
                  if ((key=='b')  ||  (key=='B')) {
                    fill(g);
                    ellipse(mouseX, mouseY, 25, 25);
                  } else {
                    //Key C = blue circle
                    if (keyPressed) {
                      if ((key=='c')  ||  (key=='C')) {
                        fill(c);
                        ellipse(mouseX, mouseY, 25, 25);
                      } else {
                        //Key D = pink square
                        if (keyPressed) {
                          if ((key=='d')  ||  (key=='D')) {
                            fill(p);
                            rect(mouseX, mouseY, 25, 25);
                          } else {
                            //Key E = green square
                            if (keyPressed) {
                              if ((key=='e')  ||  (key=='E')) {
                                fill(g);
                                rect(mouseX, mouseY, 25, 25);
                              } else {
                                //Key F = blue square
                                if (keyPressed) {
                                  if ((key=='f')  ||  (key=='F')) {
                                    fill(c);
                                    rect(mouseX, mouseY, 25, 25);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}