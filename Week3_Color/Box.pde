// second tab with class in it
class Box {
  float locX;
  float locY;

  Box(float locX_, float locY_) {
    locX = locX_;
    locY = locY_;
  }

  void show() {
    rectMode(CENTER);
    for (float i=0; i<100; i++) {
      rect(locX*i, locY*i, 20*scalar, 20*scalar);
      locX =  random(0, height);
      locY =  random(0, height);
    }
  }
}
