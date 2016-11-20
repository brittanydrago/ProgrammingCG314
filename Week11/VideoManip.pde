//BrittanyDrago
//Video_Webcam experiment

import processing.video.*;

//variables
Capture video;
PImage backgroundImage;
float threshold = 20;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();

  //empty
  backgroundImage = createImage(video.width, video.height, RGB);
}

void captureEvent(Capture video) {
  //webcam footage
  video.read();
}

void draw() {
  loadPixels();
  video.loadPixels(); 
  backgroundImage.loadPixels();

  //loop
  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      int location = x + y*video.width;
      color fgColor = video.pixels[location];

      //background color
      color bgColor = backgroundImage.pixels[location];

      //foreground & background color
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(bgColor);
      float g2 = green(bgColor);
      float b2 = blue(bgColor);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      //foreground color different from background color?
      if (diff > threshold) {
        //foreground color
        pixels[location] = fgColor;
      } else {
        //display green (duh)
        pixels[location] = color(#57E872);
      }
    }
  }
  updatePixels();

  //tinting & adjustments
  tint(mouseX, mouseY, 100);
  translate(width/2, height/2);
  imageMode(CENTER);
  image(video, 0, 0, mouseX, mouseY);
}

void mousePressed() {
  //Click LMB to reset the green layer
  backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  backgroundImage.updatePixels();
}