void setup() {
  size(1200, 500);
  background(200);
  noStroke();
  noLoop();
  placeTriangles(1000,60);
}

void placeTriangles(int n, float area){
  float side = sqrt(4 * area / sqrt(3));
  float h = (sqrt(3)/2) * side;
  float d = side;
  for (int i = 0; i < n; i++) {
    float tx = random(width);
    float ty = random(height);

    pushMatrix();
    translate(tx, ty);
    rotate(random(360));
    fill(random(255), random(255), random(255));

    triangle(-side/2, h/3, side/2, h/3, 0, -2*h/3);
    fill(0, 90);
    ellipse(-side/2, h/3, d, d);
    ellipse( side/2, h/3, d, d);
    popMatrix();
  }
}
