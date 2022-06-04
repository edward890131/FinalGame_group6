class Straw2 {

  float w = 263/2;
  float h = 263/2;

  void display() {
    for (int i=0; i<10; i++) {
      float a=2000*i;
      image(pStraw, straws2X[i]+a, straws2Y[i], w, h);
    }
  }

  void checkCollision() {
    for (int i=0; i<10; i++) {
      float a=2000*i;
      if (isHit( straws2X[i]+a, straws2Y[i], w, h, p.playerX, p.playerY, p.w, p.h)) {
        straws2Y[i]=-200;
      }
    }
  }
}
