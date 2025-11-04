void setup() {
  size(1200, 500);
  background(200);
  noStroke();
  noLoop();
  placeRectangles(1000,60);
}

void placeRectangles(int n, float area){
  float aspect = 1.6;
  float h = sqrt(area / aspect);
  float w = aspect * h;
  float d = min(w, h)*1.5;
  rectMode(CENTER);
  for (int i = 0; i < n; i++) {
    float halfDiag = 0.5 * sqrt(w*w + h*h);
    float tx = random(halfDiag, width - halfDiag);
    float ty = random(halfDiag, height - halfDiag);

    pushMatrix();
      translate(tx, ty);
      rotate(random(360));
      fill(random(255), random(255), random(255));
      rect(0, 0, w, h);

    popMatrix();
  }
}
