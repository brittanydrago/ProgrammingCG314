//BrittanyDrago
//Class_with_Allie_&_Peter

//Variables
float r, g, b;

//Eyeball objects
Eye ball1;
Eye ball2;
Eye ball3;
Eye ball4;
Eye ball5;
Eye ball6;
Eye ball7;
Eye ball8;

//Cat objects
Cat kitty;

//Variable
float gravity = 0.5;  

void setup() { 
  size(800, 600);
  smooth();

  // Create Eyeballs
  ball1 = new Eye(50, 0, 50);
  ball2 = new Eye(200, 50, 120);
  ball3 = new Eye(650, 100, 30);
  ball4 = new Eye(350, 150, 60);
  ball5 = new Eye(450, 200, 30);
  ball6 = new Eye(500, 250, 20);
  ball7 = new Eye(750, 300, 40);
  ball8 = new Eye(575, 350, 100);

  //Create Kitty
  kitty = new Cat (width/2, height/2, 150, color(255));
} 

void draw() { 
  background(0);

  if (keyPressed) {
    if (key == ' ') {
      r = random(0, 255);
      g = random(0, 255);
      b = random(0, 255);
      background (r, g, b);
    }
  }
  
  //Text Directions
  textSize(20);
  fill(255);
  text("Press space if you dare", 10, 20);

  //Display Eyeballs
  ball1.display();
  ball2.display();
  ball3.display();
  ball4.display();
  ball5.display();
  ball6.display();
  ball7.display();
  ball8.display();

  //Display Kitty
  kitty.display();

  //Move Eyeballs
  ball1.update();
  ball2.update();
  ball3.update();
  ball4.update();
  ball5.update();
  ball6.update();
  ball7.update();
  ball8.update();

  //Move Kitty
  kitty.update();
}