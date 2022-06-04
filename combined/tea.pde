class Tea {

  final int TEA_NUM = 10;


  void display() {
    for (int i=0; i<10; i++) {
      float a=2880*i;
      image(tea1, tea1X[i]+a, tea1Y[i], teaSize, teaSize);
      image(tea2, tea2X[i]+a, tea2Y[i], teaSize, teaSize);
      image(tea3, tea3X[i]+a, tea3Y[i], teaSize, teaSize);
    }
  }


  void checkCollision() {
    for (int i=0; i<10; i++) {
      float a=2880*i;
      if (isHit( tea1X[i]+a, tea1Y[i], teaSize, teaSize, p.playerX, p.playerY, p.w, p.h)) {
        tea1Y[i]=-200;
      }
      if (isHit( tea2X[i]+a, tea2Y[i], teaSize, teaSize, p.playerX, p.playerY, p.w, p.h)) {
        tea2Y[i]=-200;
      }
      if (isHit( tea3X[i]+a, tea3Y[i], teaSize, teaSize, p.playerX, p.playerY, p.w, p.h)) {
        tea3Y[i]=-200;
      }
    }
  }
}
