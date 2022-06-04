class Gogoro {

  float speed=random(-12, -18);


  void display() {

    image(gogoro, gogoroX, gogoroY, gogoroHeight, gogoroWidth);
  }

  void move() {
    gogoroX+=speed;
  }
}
