//printing code homework week 1

import processing.pdf.*;

void setup () {
  size(500, 600);
  beginRecord(PDF, "printable.pdf");
}

void draw () {
  strokeWeight(3.5);  
  for (int x=0; x<width; x+=5) {
    for (int y=0; y<height; y+=5) {
      stroke(255);
      fill(0);
      rect(x, y, 5, 5);
    }
  }
  stroke(0);
  fill(255);
  ellipse(250, 190, 230, 230);
  triangle(150, 270, 350, 270, 250, 570);
  endRecord();
}

