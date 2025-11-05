void setup() {
  size(1200, 500);
  background(200);
  noStroke();
  noLoop();
  placeRectangles(1000);
}

void placeRectangles(int n) {
  float area = 70;
  float aspect = 1.6;
  float h = sqrt(area / aspect);
  float w = aspect * h;
  float d = min(w, h)*1.5;
  float offset = 4;
  rectMode(CENTER);
  for (int i = 0; i < n; i++) {
    float halfDiag = 0.5 * sqrt(w*w + h*h); // find the center of the rectangle
    float tx = random(halfDiag, width - halfDiag);
    float ty = random(halfDiag, height - halfDiag);
    pushMatrix();
    translate(tx, ty); // random translation
    rotate(random(360)); // random rotation
    fill(0, 90);
    //create the wings
    if (w >= h) { //make it so that the "wings" are on the long side of the rectangles
      ellipse(0, -(h/2 + offset), d, d);
      ellipse(0, (h/2 + offset), d, d);
    } else {
      ellipse(-(w/2 + offset), 0, d, d);
      ellipse((w/2 + offset), 0, d, d);
    }
    //create the rectangle
    fill(random(255), random(255), random(255)); // random rectangle color
    rect(0, 0, w, h);
    popMatrix();
  }
}
