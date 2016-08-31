void setup()  {
 size(640,480);
}

void draw()  {
 background(144,232,255);
 line(0,0,640,480);
 noStroke();
 fill(0,150,50);
 ellipse(445,125,100,100);
 fill(255,3,167);
 ellipse(mouseX,mouseY,20,20);
}