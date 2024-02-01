import easy.ease.*;
EasyEase curve;

float strokes = 60;

float start = 100;
float stop = 500;
void setup() {
  size(600, 600);
  curve = new EasyEase(this,3);
}
void draw() {
  background(0);
  strokeWeight(4);

  for (float i =0; i<=strokes; i++) {
    //linear distribution
    float linearDist = map(i, 0, strokes, start, stop);
    color linea = (frameCount)%strokes==i?#ffffff: #ff00ff;
    stroke(linea);
    line(linearDist, 50, linearDist, height/2);

    // Nonlinear distribution
    float nonLinearDist = curve.in(i/strokes, start, stop,"once");
    color nonli = (frameCount)%strokes==i?#ffffff: #ff0000;
    stroke(nonli);
    line(nonLinearDist, height/2, nonLinearDist, height-50);
  }
}