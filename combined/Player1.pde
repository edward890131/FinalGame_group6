class Player1 {
  float x, y;
  final float w = 116, h =105;

  final float player1_INIT_X = 1300;
  final float player1_INIT_Y = 30;

  float speed = 10;

  void update() {
    // player1 image
    //imageMode(CENTER);
    image(head, x, y);

    if (upPressed) {
      y -= speed;
    }
    if (downPressed) {
      y += speed;
    }
    if (leftPressed) {
      x -= speed;
    }
    if (rightPressed) {
      x += speed;
    }

    // Boundary Detection
    if (x + w >= WIDTH)x = WIDTH - w;
    if (x <= 0)x = 0;
    if (y + h >= HEIGHT-30)y = HEIGHT - h-30;
    if (y <= 0)y = 0;
  }

  void detectBoundary() {
    // detect desk boundary
    // right side

    for (int i=0; i < desks.length; i++) {
      if (isHit(desks[i].x, desks[i].y, desks[i].w, desks[i].h, x, y, w, h)) {

        if (x <= desks[i].x + desks[i].w && x+w > desks[i].x+desks[i].w) {
          println("hit desk" + i + "right");
          x = desks[i].x + desks[i].w;
          leftPressed = false;
        } else if (x+w >= desks[i].x && x < desks[i].x) {
          println("hit desk" + i + "left");
          x= desks[i].x-w;
          rightPressed = false;
        } else if (y+h >= desks[i].y && y < desks[i].y) {
          println("hit desk" + i + "bottom");
          y = desks[i].y-h;
          downPressed = false;
        } else if (y <= desks[i].y + desks[i].h && y+h > desks[i].y + desks[i].h) {
          println("hit desk" + i + "top");
          y= desks[i].y + desks[i].h;
          upPressed = false;
        }
      }
    }
  }


  //void detectBoundary() {
  //  // detect desk boundary
  //  // right side
  //  for (int i=0; i < desks.length; i++) {
  //    if (isHit(desks[i].x, desks[i].y, desks[i].w, desks[i].h, playerP1.x, playerP1.y, playerP1.w, playerP1.h)) {
  //      if (x>desks[i].x && y>desks[i].y&&y<desks[i].y+desks[i].h) {
  //        x = desks[i].x + desks[i].w;
  //        leftPressed = false;
  //      }

  //      if (x<desks[i].x && y>desks[i].y&&y<desks[i].y+desks[i].h) {
  //        x= desks[i].x-w;

  //        rightPressed = false;
  //      }
  //      if (y> desks[i].y && x>desks[i].x&&x<desks[i].x+desks[i].w) {
  //        y= desks[i].y + desks[i].h;

  //        upPressed = false;
  //      }
  //      if (y< desks[i].y && x>desks[i].x&&x<desks[i].x+desks[i].w ) {
  //        y = desks[i].y-h;

  //        downPressed = false;
  //      }
  //    }
  //  }
  //}



  Player1() {
    x = player1_INIT_X;
    y = player1_INIT_Y;
    speed = 5;
  }
}
