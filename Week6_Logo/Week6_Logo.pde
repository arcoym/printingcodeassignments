/* 
 Printing Code ITP
 (Spring 2012)
 
 Assignment Week 6: 
 Design a logo that has some sort of dynamic expression. It does not need to be random, but should 
 at least show some range of expression that can easily be tweaker by changin the variables in the 
 sketch. Form, color, typography and grids should be considered for planning a strategy. 
 
 This sketch shows variations for the Ride Snowboards logo, a company that provides outdoor wear 
 and equiptment for snowboarding. 
 
 */

/* created by Alexandra Coym */

import processing.pdf.*;

float numVertices = 25;
float vertexDegree = 360 / numVertices;
PImage logo;

void setup()
{
  size(650, 650);
  // size(round(printWidth * enlarge), round(printHeight * enlarge));
  background(255);
  smooth();
  logo = loadImage("logo2.jpg");
  beginRecord(PDF, "ForPrint.pdf");
}

void draw() {
  noLoop();
  noStroke();

  //grid values fitted to make each square be 26x26
  ModularGrid grid = new ModularGrid(20, 20, 3, 36.5);
  
  int r = (int)random(3);
    boarder2();
/*
  if (r ==0) {
    boarder1();
  }

  if (r ==1) {
    boarder2();
  }

  if (r ==2) {
    boarder3();
  }
*/
  noStroke();

  //uncomment to display the grid
  //grid.display();
  endRecord();
}

void fillBlack(Module theModule)
{
  pushMatrix();
  noStroke();
  translate(theModule.x, theModule.y);
  fill(0);
  rect(0, 0, 26, 26);
  popMatrix();
}

void fillWhite(Module theModule)
{
  pushMatrix();
  stroke(255);
  translate(theModule.x, theModule.y);
  fill(255);
  rect(0, 0, 26, 26);
  popMatrix();
}

void fillRide(Module theModule)
{
  pushMatrix();
  noStroke();
  translate(theModule.x, theModule.y);
  fill(228, 90, 20);
  rect(0, 0, 26, 26);

  fill(228, 90, 20);
  popMatrix();
}

