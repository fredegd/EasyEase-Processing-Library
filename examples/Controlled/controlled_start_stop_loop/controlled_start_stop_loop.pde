/**
 * EasyEase
 * A collection of easing function for Processing.
 *
 * https://github.com/fredegd/EasyEase
 *
 * Example: controlled start_stop_loop
 *
 * automate the motion looping from
 * the  start to the stop value
 * taking a conter as a motion controller
 *
 *
 * @author      Fred Egidi  -  https://github.com/fredegd
 *
 */
import easy.ease.*;
EasyEase controlled;
float intensity = 3.0;
void setup() {
  size(600, 600);
  rectMode(CENTER);
  controlled = new EasyEase(this, intensity);
}
void draw() {
  background(0);
  fill(255, 0, 255);
  noStroke();
  float count = frameCount/60.0;
  //alternatively use the framer method:
  //float count = mover.framer(frameCount);
  float start = 50;
  float stop = width-50;

  float x = controlled.out(count, start, stop, "loop" );
  // "loop" is the default option,
  // it would be the same as:
  //float x = mover.out(count, 50, width-50);

  rect(x, height/2, 100, 100);
}