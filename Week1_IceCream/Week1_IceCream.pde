/* 
 Printing Code ITP
 (Spring 2012)
 
 Assignment Week 1: create a sketch of an ice cream cone that 
 consists only of black(0) and white(255) and uses the following
 three each no more than once: rect(), triangle() and ellipse().
 */

/* created by Alexandra Coym */

import processing.pdf.*;

// setting canvas properties
//float printWidth = 17;
//float printHeight = 23;
//float enlarge = 48;


void setup () {
  size(500, 620);
  //size(round(printWidth * enlarge), round(printHeight * enlarge));
  background(255);
  beginRecord(PDF, "printable.pdf");
}

void draw () {
  // creating the dotted style by drawing squares with a thick stroke (3.5)
  strokeWeight(3.5); 
  rectMode(CENTER); 
  for (int x=0; x<width; x+=5) {
    for (int y=0; y<height; y+=5) {
      stroke(255);
      fill(0);
      rect(x, y, 5, 5);
    }
  }
  // creating the ellipse and setting strokeWeight for ellipse/triangle
  strokeWeight(1);
  stroke(0);
  fill(255);
  ellipse(250, 210, 270, 270);

  // looping through triangles to create stripped visuality
  for (int i=100; i<260; i=i+2) {
    triangle(i, 250, 250, 550, 400, 250);
  }
  endRecord();
}

