//Allie_class

class Cat {
  float x;
  float y;
  float size;
  float speed;
  float theColor = color(100, 100, 100);

  Cat(float tempX, float tempY, float tempSize, color tempColor) {
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
    speed = 0;
  }

  void display() {
    fill(#8E6417);
    triangle(x, y, x, y+40, x+40, y+10); //ear1
    triangle(x + 100, y, x+ 100, y+ 40, x+60, y+10); //ear2
    ellipse(x + 50, y + 50, 105, 105); //head
    fill(#E8F563);
    ellipse(x + 25, y + 50, 20, 20); //eye1
    ellipse(x + 75, y + 50, 20, 20); //eye2
  }
  void update() {
    y = y + speed; 
    speed = speed + gravity+1; 

    if (y > height) { 
      speed = speed * -0.95;
    }
  }
}