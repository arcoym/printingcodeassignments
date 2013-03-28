//draw first snowboarder
void boarder1() {
   ModularGrid grid = new ModularGrid(20, 20, 3, 36.5);

  for (int i = 1; i<17; i++) {
    for (int k = 2; k<8; k++) {
      fillBlack(grid.modules[k][i]);
    }
  }
  for (int i = 8; i<15; i++) {
    {
      fillBlack(grid.modules[i][i]);
    }
  }

  for (int i = 8; i<14; i++) {
    fillBlack(grid.modules[i][i+1]);
  }
  for (int i = 8; i<11; i++) {
    fillBlack(grid.modules[i][i+2]);
  }
  for (int i = 8; i<11; i++) {
    fillBlack(grid.modules[i][i+2]);
  }
  for (int i = 12; i<15; i++) {
    fillBlack(grid.modules[i][i-1]);
  }

  for (int i = 5; i<7; i++) {
    fillBlack(grid.modules[1][i]);
  }

  for (int i = 1; i<4; i++) {
    fillWhite(grid.modules[2][i]);
  }
  for (int i = 1; i<5; i++) {
    fillWhite(grid.modules[3][i]);
  }
  for (int i = 11; i<18; i++) {
    fillWhite(grid.modules[7][i]);
  }
  for (int i = 13; i<16; i++) {
    fillWhite(grid.modules[4][i]);
  }
  for (int i = 8; i<12; i++) {
    fillWhite(grid.modules[2][i]);
  }
  fillWhite(grid.modules[7][1]);
  fillWhite(grid.modules[7][3]);
  fillWhite(grid.modules[3][9]);
  fillRide(grid.modules[1][16]);
  fillBlack(grid.modules[3][2]);
  
    //typeface
  pushMatrix();
  stroke(255);
  Module typeface = grid.modules[1][17];
  translate(typeface.x, typeface.y);
  image(logo, 0, 28);
  fill(0);
  popMatrix();
  
}

