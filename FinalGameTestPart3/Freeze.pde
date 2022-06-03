//slow down

class Freeze extends Tool {
  float w = 70;
  float h = 74;
  boolean isAlive = true;
  boolean isClick = false;

  Freeze(float x, float y) {
    super(x, y);
  }

  void display() {
    if (isAlive) {
      image(freezeImg, x, y);
    }
  }

  void click() {
    if (isAlive && isMouseHit(x, y, w, h) && mousePressed) {
      isClick = true;
      for (int j=0; j<STRAW_NUM; j++) {
        straws[cupNum][j].speedX = floor(random(-1, 1));
        straws[cupNum][j].speedY = floor(random(-1, 1));
        while ((straws[cupNum][j].speedX)==0 || (straws[cupNum][j].speedY)==0) {
          straws[cupNum][j].speedX = floor(random(-1, 1));
          straws[cupNum][j].speedY = floor(random(-1, 1));
        }
      }
      isAlive = false;
    }
  }
}
