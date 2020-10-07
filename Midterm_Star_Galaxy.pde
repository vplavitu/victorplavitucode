//Fall 2020 DIAP Creative Code Midterm
//Victor Plavitu
//Titled: Geometric Space Voyage
//Move square with arrow keys through space while moving mouse to control speed of stars
//Coding Train played big role in influence of creating this. Check link below.
//https://www.youtube.com/watch?v=17WoOqgXsRM

Star[] stars = new Star[1000]; //alludes to star tab created

float speed; //how fast stars move
float speedShip=10; //how fast square moves
float x, y; 


void setup() {
  size(800, 800); //size of game
  smooth();
  x = width/2; 
  y = height/2;
  for (int i=0; i < stars.length; i++) { //where stars will start from
    stars[i]= new Star();
  }
}



void draw() {

  speed = map(mouseX, 0, width, 0, 50); //speed of shooting stars controled by mouse moving left to right
  background(0);

  rect(x, y, 20, 20); //size of rect
  fill (color(255)); //color of rect

  line(50, 750, 750, 750); //line around text
  strokeWeight(1);
  stroke(255);

  // words and instructions for game

  textSize(20);
  text("Hyper", 700, 735); 
  fill(225);

  textSize(20);
  text("Move Mouse Left & Right to Control Speed", 190, 780); 
  fill(255);

  textSize(20);
  text("Use Arrow Keys to Move Square", 240, 730); 
  fill(255);

  textSize(20);
  text("Slow", 50, 735); 
  fill(255);

  //arrow key actions

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) y=y-speedShip;
      if (keyCode == RIGHT) x=x+speedShip;
      if (keyCode == DOWN) y=y+speedShip;
      if (keyCode == LEFT) x=x-speedShip;
    }
  }

  //references Star tab

  pushMatrix();
  translate(width/2, height/2);
  for (int i=0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  popMatrix();
}
