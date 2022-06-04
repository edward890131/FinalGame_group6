//scale up

class Magnifier extends Tool {
  float w = 72;
  float h = 72;
  boolean isAlive = true;
  boolean isClick = false;

  Magnifier(float x, float y) {
    super(x, y);
  }

  void display() {
    if (isAlive) {
      image(magnifierImg, x, y);
    }
  }

  void click() {
    if (isAlive && isMouseHit(x, y, w, h) && mousePressed) {
      isClick = true;
      for (int j=0; j<STRAW_NUM; j++) {
        straws[cupNum][j].scale = 2;
      }
      isAlive = !isAlive;
    }
  }
}
