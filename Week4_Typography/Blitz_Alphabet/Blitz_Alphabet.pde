/* 
 Printing Code ITP
 (Spring 2012)
 
 Assignment Week 4:  Assignment Week 4: This week you’re going to design a word. 
 Pick a word and make a typeface around it. 
 The important thing is that you draw the letters using some 
 kind of rule-based logic.
 
 */

/* created by Alexandra Coym */

//setting canvas properties
float printWidth = 17;
float printHeight = 22;
float enlarge = 70;



import geomerative.*;
int fontSize = 230;


void setup() 
{
  size(round(printWidth * enlarge), round(printHeight * enlarge));
  background(255);
  smooth();
  fill(0);
  noStroke();

  // initialize the geomerative library
  RG.init(this);

  noLoop();
} 

void draw() {
  translate(40, 280);
  RFont font = new RFont("helveticaneue.ttf", fontSize, RFont.LEFT);
  RCommand.setSegmentLength(30);

  RGroup group = font.toGroup("A B C D E").toPolygonGroup();

  for (int k = 0; k < group.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group.elements[k];

    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];

      int offset = 15;
      int range = 40;

      for (int j = 0; j < curContour.points.length-1; j++)
      {
        RPoint curPoint = curContour.points[j];
        if (j >= offset && j < offset+range) {
          curPoint.x = curPoint.x + random(6);
          curPoint.y = curPoint.y + random(6);
        } 
        else {
          curPoint.x = curPoint.x - random(6);
          curPoint.y = curPoint.y - random(6);
        }

        if (j == curContour.points.length) {
          j =0;
        }
        stroke(0);
        strokeWeight(4);
        line(curContour.points[j].x, curContour.points[j].y, curContour.points[j+1].x, curContour.points[j+1].y);
        stroke(246, 255, 5);
        line(curContour.points[j].x-5, curContour.points[j].y-5, curContour.points[j+1].x-5, curContour.points[j+1].y-5);
      }
    }
  }


  RGroup group2 = font.toGroup("F G H I J K").toPolygonGroup();
  translate(0, 300);
  for (int k = 0; k < group2.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group2.elements[k];

    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];

      int offset = 15;
      int range = 40;

      for (int j = 0; j < curContour.points.length-1; j++)
      {
        RPoint curPoint = curContour.points[j];
        if (j >= offset && j < offset+range) {
          curPoint.x = curPoint.x + random(6);
          curPoint.y = curPoint.y + random(6);
        } 
        else {
          curPoint.x = curPoint.x - random(6);
          curPoint.y = curPoint.y - random(6);
        }

        if (j == curContour.points.length) {
          j =0;
        }
        stroke(0);
        strokeWeight(4);
        line(curContour.points[j].x, curContour.points[j].y, curContour.points[j+1].x, curContour.points[j+1].y);
        stroke(246, 255, 5);
        line(curContour.points[j].x-5, curContour.points[j].y-5, curContour.points[j+1].x-5, curContour.points[j+1].y-5);
      }
    }
  }
  
   RGroup group3 = font.toGroup("L M N O P").toPolygonGroup();
  translate(0, 300);
  for (int k = 0; k < group3.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group3.elements[k];

    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];

      int offset = 15;
      int range = 40;

      for (int j = 0; j < curContour.points.length-1; j++)
      {
        RPoint curPoint = curContour.points[j];
        if (j >= offset && j < offset+range) {
          curPoint.x = curPoint.x + random(6);
          curPoint.y = curPoint.y + random(6);
        } 
        else {
          curPoint.x = curPoint.x - random(6);
          curPoint.y = curPoint.y - random(6);
        }

        if (j == curContour.points.length) {
          j =0;
        }
        stroke(0);
        strokeWeight(4);
        line(curContour.points[j].x, curContour.points[j].y, curContour.points[j+1].x, curContour.points[j+1].y);
        stroke(246, 255, 5);
        line(curContour.points[j].x-5, curContour.points[j].y-5, curContour.points[j+1].x-5, curContour.points[j+1].y-5);
      }
    }
  }
  
  RGroup group4 = font.toGroup("Q R S T U").toPolygonGroup();
  translate(0, 300);
  for (int k = 0; k < group4.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group4.elements[k];

    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];

      int offset = 15;
      int range = 40;

      for (int j = 0; j < curContour.points.length-1; j++)
      {
        RPoint curPoint = curContour.points[j];
        if (j >= offset && j < offset+range) {
          curPoint.x = curPoint.x + random(6);
          curPoint.y = curPoint.y + random(6);
        } 
        else {
          curPoint.x = curPoint.x - random(6);
          curPoint.y = curPoint.y - random(6);
        }

        if (j == curContour.points.length) {
          j =0;
        }
        stroke(0);
        strokeWeight(4);
        line(curContour.points[j].x, curContour.points[j].y, curContour.points[j+1].x, curContour.points[j+1].y);
        stroke(246, 255, 5);
        line(curContour.points[j].x-5, curContour.points[j].y-5, curContour.points[j+1].x-5, curContour.points[j+1].y-5);
      }
    }
  }
  
  RGroup group5 = font.toGroup("V W X Y Z").toPolygonGroup();
  translate(0, 250);
  for (int k = 0; k < group5.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group5.elements[k];

    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];

      int offset = 15;
      int range = 40;

      for (int j = 0; j < curContour.points.length-1; j++)
      {
        RPoint curPoint = curContour.points[j];
        if (j >= offset && j < offset+range) {
          curPoint.x = curPoint.x + random(6);
          curPoint.y = curPoint.y + random(6);
        } 
        else {
          curPoint.x = curPoint.x - random(6);
          curPoint.y = curPoint.y - random(6);
        }

        if (j == curContour.points.length) {
          j =0;
        }
        stroke(0);
        strokeWeight(4);
        line(curContour.points[j].x, curContour.points[j].y, curContour.points[j+1].x, curContour.points[j+1].y);
        stroke(254, 255, 5);
        line(curContour.points[j].x-5, curContour.points[j].y-5, curContour.points[j+1].x-5, curContour.points[j+1].y-5);
      }
    }
  }
  
}

// safe image as a tiff
void mouseClicked () {
  int value = 0;
  if (value == 0) {
    save("print.tiff");
  }
}
