/* 
 Printing Code ITP
 (Spring 2012)
 
 Assignment Week 4: 
Take an existing book cover and analyze what works and what doesn't. 
Create your own design using the grid system and the only constraints is 
that you can't use images.

 */

/* created by Alexandra Coym */

import processing.pdf.*;

PFont AvenirBold;

float numVertices = 25;
float vertexDegree = 360 / numVertices;
float numVertices2 = 3;

//setting canvas properties
float printWidth = 16;
float printHeight = 20;
float enlarge = 48;

void setup()
{
  //size(650, 800);
  size(round(printWidth * enlarge), round(printHeight * enlarge));
  background(255);
  smooth();
  AvenirBold= loadFont("AvenirBold.vlw");
  beginRecord(PDF, "ForPrint.pdf");
}

void draw() {
  noLoop();
  noStroke();
  ModularGrid grid = new ModularGrid(7, 9, 7, 20);

  //drawing the front wing
  pushMatrix();
  Module wing1 = grid.modules[2][6];
  translate(wing1.x, wing1.y);
  fill(250, 180, 66, 70);
  triangle(0, 0, (width/9)*3+30, (-(height/9)*3), (width/6)*3-50, 0);
  popMatrix();

  //drawing the body
  pushMatrix();
  Module body = grid.modules[2][6];
  translate(body.x, body.y);
  fill(250, 241, 66, 70);
  beginShape();
  vertex(0, 0);
  vertex(-10, -25);
  vertex((width/6), (-(height/9)*2));
  vertex((width/6)*3-30, -25);
  vertex(((width/6)*3)-50, 0);
  vertex(0, 0);  
  endShape();
  popMatrix();


  //drawing the neck
  pushMatrix();
  Module neck = grid.modules[2][6];
  translate(neck.x, neck.y);
  fill(250, 133, 23, 70);
  beginShape();
  vertex(0, 0);
  vertex(-110, -(height/9*3));
  vertex(-60, -(height/9*3-10));
  vertex((width/6), -35);
  vertex(0, 0);  
  endShape();
  popMatrix();

  //drawing the head
  pushMatrix();
  Module head = grid.modules[1][3];
  translate(head.x, head.y);
  fill(250, 133, 23, 70);
  beginShape();
  vertex(47, 2);
  vertex(-70, 60);
  vertex(-6, -9);
  vertex(47, 2);
  endShape();
  popMatrix();

  //drawing the tail
  pushMatrix();
  Module tail = grid.modules[4][6];
  translate(tail.x, tail.y);
  fill(247, 66, 0, 70);
  beginShape();
  triangle(0, -35, (width/6*1.5)+20, -(height/9*3.5), (width/6)-11, 0);
  endShape();
  popMatrix();

  //drawing the back wing
  pushMatrix();
  Module wing2 = grid.modules[2][6];
  translate(wing2.x, wing2.y);
  fill(255, 42, 31, 70);
  triangle(0, 0, (width/9), (-(height/9)*4), (width/6)*3-50, 0);
  popMatrix();

  //drawing the wind-up thingy
  pushMatrix();
  Module windup = grid.modules[3][6];
  translate(windup.x, windup.y);
  ellipseMode(CENTER);
  fill(0);
  beginShape();
  ellipse(30, 60, 60, 60);
  ellipse(75, 60, 60, 60);
  rect(45, 0, 20, 40);
  fill(255);
  ellipse(30, 60, 20, 23);
  ellipse(75, 60, 20, 23);
  endShape();
  popMatrix();

//draw the Title
pushMatrix();
Module title = grid.modules[1][1];
translate(title.x,title.y);
fill(0);
  textFont(AvenirBold, 45);
text("The Wind-Up Bird",-50,-20);
text("Chronicle",-50,30);
popMatrix();

//drawing the Author
pushMatrix();
Module author = grid.modules[3][8];
translate(author.x,author.y);
fill(0);
  textFont(AvenirBold, 40);
text("Haruki Murakami",30,0);
popMatrix();

  //uncomment to display the grid
   //grid.display();
   endRecord();
}

