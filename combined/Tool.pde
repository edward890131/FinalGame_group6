class Tool {
  boolean isAlive;
  boolean isClick;
  float x, y;

  void display() {}
  void click() {}

  Tool(float x, float y) {
    isAlive = true;
    isClick = false;
    this.x = x;
    this.y = y;
  }
}
