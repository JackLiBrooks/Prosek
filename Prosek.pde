void setup() {
  size(1200, 500);
  background(200);
}

void placeTriangles(int n){
  for (int i = 0; i < n; i++){
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    float x3 = random(width);
    float y3 = random(height);
    triangle (x1, y1, x2, y2, x3, y3);
  }
}
