//draw third snowboarder
void boarder3() {
  ModularGrid grid = new ModularGrid(20, 20, 3, 36.5);
  k = 6;

  for (int i = 7; i<19; i++) {
    for (int k = 2; k<7; k++) {
      fillBlack(grid.modules[i][k]);
    }
  }

  for (int i = 7; i<19; i++) {
    for (int k = 2; k<7; k++) {
      fillBlack(grid.modules[i][k]);
    }
  }

  for (int i = 13; i<18; i++) {
    fillWhite(grid.modules[i][5]);
    fillWhite(grid.modules[i][6]);
  }

  for (int i = 2; i<15; i++) {
    fillBlack(grid.modules[i][10]);
    fillBlack(grid.modules[i][11]);
  }

  for (int i = 13; i<16; i++) {
    fillBlack(grid.modules[i][9]);
  }

  for (int i = 7; i<10; i++) {
    fillBlack(grid.modules[k][i]);
    fillBlack(grid.modules[k+1][i]);
    fillBlack(grid.modules[k+5][i]);
    fillBlack(grid.modules[k+6][i]);
    k = k-1;
  }

  fillBlack(grid.modules[10][1]);
  fillBlack(grid.modules[11][1]);
  fillBlack(grid.modules[6][4]);
  fillBlack(grid.modules[8][7]);
  fillBlack(grid.modules[15][10]);
  fillRide(grid.modules[1][10]); 



  fillWhite(grid.modules[7][2]);
  fillWhite(grid.modules[10][6]);
  fillWhite(grid.modules[18][6]);
  fillWhite(grid.modules[18][2]);
  fillWhite(grid.modules[18][3]);
  fillWhite(grid.modules[17][2]);


  //typeface
  pushMatrix();
  stroke(255);
  Module typeface = grid.modules[1][12];
  translate(typeface.x, typeface.y);
  image(logo, 0, 28);
  fill(0);
  popMatrix();
}

