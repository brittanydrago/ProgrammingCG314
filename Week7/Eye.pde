class Eye {

  //Variables
  float x;
  float y;
  float w;
  float speed;

  //Eyeball constuctor
  Eye(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }

  void display() {
    fill(255);
    ellipse(x, y, w, w);//White part
    fill(#0D9B02);
    noStroke();
    ellipse(x, y, w/2, w/2);//Iris
    fill(0);
    ellipse(x, y, w/4, w/4);//Pupil
    fill(255);
    ellipse(x+5, y, w/8, w/8);//Shine
  }

  void update() {
    y = y + speed; 
    speed = speed + gravity; 

    if (y > height) { 
      speed = speed * -0.95;
    }
  }
}