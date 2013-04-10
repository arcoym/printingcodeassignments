/* 
 Printing Code ITP
 (Spring 2013)
 
 Assignment Week 3: Recreate an existing piece of visual art using randomization as the 
 key design principle. The sketch must look different every time it runs, but still stay 
 true to the original visuality.  
 */

/* created by Alexandra Coym */

import processing.pdf.*;
import toxi.util.datatypes.*;

void setup () {
  size (600, 600);
  background(240);
  smooth();
  beginRecord(PDF, "ForPrint.pdf");
}

void draw() {
  noStroke();
  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(250, 204, 18), 4); //yellow
  ran.add(color(188, 9, 9), 1); //red
  ran.add(color(34, 49, 175), 1); //blue
  ran.add(color(220), 1); //grey

  // fixe perimeter lines
  for (int i = 0; i<30; i++) {
    //int n = int(random(1,4));  
    fill(ran.getRandom());
    rect(width-40, i*20, 20, 20);
  }
  for (int i = 0; i<30; i++) {
    //int n = int(random(1,4));  
    fill(ran.getRandom());
    rect(20, i*20, 20, 20);
  }
  for (int i = 0; i<30; i++) {
    //int n = int(random(1,4));  
    fill(ran.getRandom());
    rect(i*20, height-40, 20, 20);
  }
  for (int i = 0; i<30; i++) {
    //int n = int(random(1,4));  
    fill(ran.getRandom());
    rect(i*20, 20, 20, 20);
  }


  // drawing the vertical lines
  for (int w=1; w<7; w++) {
    int wx = int(random(40, width));
    wx = wx - (wx % 40);

    for (int i = 0; i<30; i++) {
      fill(ran.getRandom());
      rect(40+wx, i*20, 20, 20);
    }
  }

  // drawing the horizontal lines
  for (int w=1; w<9; w++) {
    int wx = int(random(40, width));
    wx = wx - (wx % 40);

    for (int i = 0; i<30; i++) {
      fill(ran.getRandom());
      rect(i*20, 40 + wx, 20, 20);
    }
  }

  //drawing the larger squares
  for (int i = 0; i<30; i++) {
    fill(ran.getRandom());
    rect(i*20, 80, 20, 20);
  }
  for (int i = 0; i<30; i++) {
    fill(ran.getRandom());
    rect(i*20, 200, 20, 20);
  }

  for (int i = 0; i<30; i++) {
    fill(ran.getRandom());
    rect(i*20, 440, 20, 20);
  }

  fill(9, 37, 188); //blue squares
  rect(20, 200, 60, 60);
  rect(460, 400, 40, 40);
  rect(400, 100, 60, 100);

  fill(188, 9, 9); //red squares
  rect(80, 40, 80, 60);
  rect(400, 300, 60, 80);
  rect(460, 460, 40, 40);
  rect(400, 140, 60, 40);


  fill(220); //grey squares
  rect(100, 60, 40, 20);
  rect(415, 320, 30, 40);

  fill(250, 204, 18); //yellow squares
  rect(415, 150, 35, 20);

  noLoop();
  endRecord();
}


//maxWidth = width/4;
//  while (w<width) {
//    w += int(random(maxWidth));
//  for (int w=1; w<9; w++) {
//    int n = int(random(450)*w);

