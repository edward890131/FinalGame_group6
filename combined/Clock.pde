//plus time

class Clock extends Tool {
  float w = 68;
  float h = 78;
  boolean isAlive = true;
  boolean isClick = false;

  Clock(float x, float y) {
    super(x, y);
  }

  void display() {
    if (isAlive) {
      image(clockImg, x, y);
    }
  }

  void click() {
    if (isAlive && isMouseHit(x, y, w, h) && mousePressed) {
      println("clock pressed");
      isClick = true;
      isAlive = false;
      println(isAlive);
      addTime(CLOCK_BONUS_SECONDS);
    }
  }
}
