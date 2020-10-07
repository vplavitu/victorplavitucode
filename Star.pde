//Star tab
class Star {  //defining star
  float x;
  float y;
  float z;  // diagonal axis in 3D space

  float pz;


  //start location for stars, and frequency
  Star() {  
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z=random(width);
    pz = z;
  }

  void update() {

    z=z - speed;
    if (z < 1) {
      z= width;
      x=random(-width, width);
      y=random(-height, height);
      pz=z;
    }
  }


  //animation of circle and lines to give illusion that stars are in space

  void show() {
    fill(255);
    noStroke();

    float sx =map(x / z, 0, 1, 0, width);
    float sy =map(y / z, 0, 1, 0, height);

    float r= map(z, 0, width, 16, 0);
    ellipse(sx, sy, r, r);

    float px= map(x / pz, 0, 1, 0, width);
    float py= map(y / pz, 0, 1, 0, height);
    pz=z;
    stroke(255);
    line(px, py, sx, sy);
  }
}
