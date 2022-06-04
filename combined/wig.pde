class Wig {

  float w = 263/2;
  float h = 263/2;

  void display() {
    for (int i=0; i<10; i++) {
      float a=2000*i;
      image(wig, wigX[i]+a, wigY[i], w, h);
    }
  }

  void checkCollision() {
    for (int i=0; i<10; i++) {
      float a=2000*i;
      if (isHit( wigX[i]+a, wigY[i], w, h, p.playerX, p.playerY, p.w, p.h)) {
        wigY[i]=-200;
      }
    }
  }
}
