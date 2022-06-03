//straw color -- number
//red = 0  yellow = 1  green = 2  blue = 3  Purple = 4  grey = 5

class Straw {

  float x, y;
  int colorNum;
  boolean isAlive;
  //float[] xSpeed = new float[STRAW_NUM];
  //float[] ySpeed = new float[STRAW_NUM];
  float speedX, speedY;
  int rotateRadians = floor(random(360));
  float w = 80;
  float h = 80;
  float scale = 1;


  Straw(int colorNum) {
    isAlive = true;
    this.colorNum = colorNum;
    x = random(BLOCK_X, BLOCK_X + BLOCK_W - w);
    y = random(BLOCK_Y, BLOCK_Y + BLOCK_H - h);
    speedX = floor(random(-5, 5));
    speedY = floor(random(-5, 5));
    while (abs(speedX)<1 || abs(speedY)<1) {
      speedX = floor(random(-5, 5));
      speedY = floor(random(-5, 5));
    }
  }

  void display() {
    if (isAlive) {
      pushMatrix();
      pushStyle();
      translate(x+w/2, y+h/2);
      rotate(radians(rotateRadians));
      imageMode(CENTER);
      if(scale == 2){
        scale(2);
      }
      image(strawImg[colorNum], 0, 0);
      popStyle();
      popMatrix();
      //image(strawImg[colorNum], x, y);
    }
  }

  void update() {
    x+=speedX;
    y+=speedY;
    if (x > BLOCK_X + BLOCK_W - w || x < BLOCK_X) {
      speedX*=-1;
    }
    if (y > BLOCK_Y + BLOCK_H - h || y < BLOCK_Y) {
      speedY*=-1;
    }
  }

  void slow() {
  }

  void click() {

    if (isAlive && isMouseHit(x, y, w, h) && mousePressed && colorNum==cupNum) {
      collectCount++;
      println(collectCount, cupNum);
      isAlive = false;
    }
  }
}
