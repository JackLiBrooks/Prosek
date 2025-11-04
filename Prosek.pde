void setup() {
  size(1200, 500);
  background(200);
  placeTriangles(90,50);
}

void placeTriangles(int n, float area){
  float side = sqrt(4 * area / sqrt(3));
  float h = (sqrt(3)/2) * side;
  for (int i = 0; i < n; i++) {
    float tx = random(width);
    float ty = random(height);

    pushMatrix();
    translate(tx, ty);
    rotate(random(360));

    triangle(-side/2, h/3, side/2, h/3, 0, -2*h/3);
    popMatrix();
  }
}
