//BrittanyDrago
//Week4 - Interactive Photoshop with Images

//Variables
int xMin = 45;
int xMax = 350;
int yMin = 50;
int yMax = 300;

int a = 25;
int b = 330;
int xy = 50;

//Colors
color p = color(254, 183, 242);
color g = color(178, 255, 178);
color c = color(165, 219, 253);

//Text
PFont font;
String directions = "Press & hold mouse or the corresponding keys to draw";
String clear = "Press the '0' key to clear the screen";

//Images
PImage fred;
PImage cavemanspongebob;
PImage patrick;
PImage mrkrabs;
PImage squidward;
PImage robot;

void setup() {
  size(400, 400);
  background(225);
  fill(255);
  noStroke();
  rect(25, 25, 350, 300);

  //load images
  fred = loadImage("fred.png");
  cavemanspongebob = loadImage("cavemanspongebob.png");
  patrick = loadImage("patrick.png");
  mrkrabs = loadImage("mrkrabs.png");
  squidward = loadImage("squidward.png");
  robot = loadImage("robot.png");

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
  text(directions, 45, 20);
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
      } else if (keyPressed) { //clear screen
        noStroke();
        if ((key=='0')) {
          fill(255);
          rect(25, 25, 350, 300);
        } else if (keyPressed) { //Key A = pink circle
          if ((key=='a')  ||  (key=='A')) {
            fill(p);
            ellipse(mouseX, mouseY, 25, 25);
          } else if (keyPressed) { //Key B = green circle
            if ((key=='b')  ||  (key=='B')) {
              fill(g);
              ellipse(mouseX, mouseY, 25, 25);
            } else if (keyPressed) { //Key C = blue circle
              if ((key=='c')  ||  (key=='C')) {
                fill(c);
                ellipse(mouseX, mouseY, 25, 25);
              } else if (keyPressed) { //Key D = pink square
                if ((key=='d')  ||  (key=='D')) {
                  fill(p);
                  rect(mouseX, mouseY, 25, 25);
                } else if (keyPressed) { //Key E = green square
                  if ((key=='e')  ||  (key=='E')) {
                    fill(g);
                    rect(mouseX, mouseY, 25, 25);
                  } else if (keyPressed) { //Key F = blue square
                    if ((key=='f')  ||  (key=='F')) {
                      fill(c);
                      rect(mouseX, mouseY, 25, 25);
                    } else if (keyPressed) { //Key 1 = fred
                      if (key=='1') {
                        image(fred, mouseX, mouseY, 150, 150);
                      } else if (keyPressed) { //Key 2 = cavemanspongebob
                        if (key=='2') {
                          image(cavemanspongebob, mouseX, mouseY, 150, 150);
                        } else if (keyPressed) { //Key 3 = patrick
                          if (key=='3') {
                            image(patrick, mouseX, mouseY, 150, 150);
                          } else if (keyPressed) { //Key 4 = mrkrabs
                            if (key=='4') {
                              image(mrkrabs, mouseX, mouseY, 150, 150);
                            } else if (keyPressed) { //Key 5 = squidward
                              if (key=='5') {
                                image(squidward, mouseX, mouseY, 150, 150);
                              } else if (keyPressed) { //Key 6 = squidward
                                if (key=='6') {
                                  image(robot, mouseX, mouseY, 150, 150);
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