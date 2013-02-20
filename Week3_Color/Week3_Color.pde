/* 
 Printing Code ITP
 (Spring 2012)
 
 Assignment Week 3: Create an abstract representation of your identity. 
 Use the Toxiclibs library and the color classes to write a Processing sketch that
 uses your chosen color scheme. Only constraint: Colors have to be different everytime 
 you run the sketch (i.e. use the random() function). 
 */

/* created by Alexandra Coym */


import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

//setting canvas properties
float printWidth = 16;
float printHeight = 23;
float enlarge = 48;
float scalar = 1.5;


int[] x = new int[800];
int[] y = new int[800];

TColor backgroundColor = TColor.newHSV(random(0.3, 0.8), random(.5, 1), 1);

void setup () { 
  size(round(printWidth * enlarge), round(printHeight * enlarge));
  smooth();
  int locX = 300; 
  int locY = 300;
  
  for (int i=0; i<x.length;i++) {
    x[i] = int(random(0, locX));
    y[i] = int(random(0, locY));
    locX++;
    locY++;
  }
  colorMode(HSB, 1, 1, 1);
}


void draw () {
  background(backgroundColor.hue(), backgroundColor.saturation(), backgroundColor.brightness());
  fill(1, 0, 1);
  noStroke();
  for (int i=0; i<x.length; i++) {
    rect(x[i], y[i], 20*scalar, 20*scalar);
  }
}

void mouseClicked () {
  int value = 0;
  if (value == 0) {
    save("print.tiff");
  }
}


/* Alternative hack for saving highres images
 
 void saveHiRes(int scaleFactor) {
 PGraphics hires = createGraphics(width*scaleFactor, height*scaleFactor, JAVA2D);
 beginRecord(hires);
 hires.scale(scaleFactor);
 draw();
 endRecord();
 hires.save("hires2.tiff");
 }  */
