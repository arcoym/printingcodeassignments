//draw second snowboarder
int k = 10;
int j = 10;
void boarder2() {
  ModularGrid grid = new ModularGrid(20, 20, 3, 36.5);
pushMatrix();
translate(-48,20);
  rotate(radians(-7));
  for (int i = 1; i<12; i++) {
    for (int k =11; k<16; k++) {
      fillBlack(grid.modules[k][i]);
    }
  }

  for (int i = 6; i<12; i++) {
    {
      fillBlack(grid.modules[k][i]);
    }
    k= k-1;
  }
  for (int i = 6; i<12; i++) {
    {
      fillBlack(grid.modules[j][i+1]);
      fillBlack(grid.modules[j][i-1]);
    }
    j= j-1;
  }

  fillBlack(grid.modules[4][11]);
  fillBlack(grid.modules[9][2]);
  fillBlack(grid.modules[9][3]);
  fillBlack(grid.modules[10][2]);
  fillBlack(grid.modules[10][1]);
  fillBlack(grid.modules[10][11]);

  for (int i = 2; i<17; i++) {
    fillBlack(grid.modules[i][12]);
  }

  for (int i = 8; i<11; i++) {
    fillWhite(grid.modules[13][i]);
  }

  fillWhite(grid.modules[10][5]);
  fillWhite(grid.modules[13][1]);
  fillWhite(grid.modules[13][11]);
  fillWhite(grid.modules[14][10]);
  fillWhite(grid.modules[14][11]);
  fillBlack(grid.modules[15][7]);
  fillWhite(grid.modules[15][5]);
  fillRide(grid.modules[1][12]);

popMatrix();
  //typeface
  pushMatrix();
  stroke(255);
  Module typeface = grid.modules[1][13];
  translate(typeface.x, typeface.y);
  image(logo, 0, 28);
  fill(0);
  popMatrix();
}

