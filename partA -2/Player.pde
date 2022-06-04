class Player {
  float x, y;
  final float w = 116, h =105;

  final float PLAYER_INIT_X = 1300;
  final float PLAYER_INIT_Y = 30;

  float speed = 10;

  void update() {
    // Player image
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
    if (y + h >= HEIGHT-70)y = HEIGHT - h-70;
    if (y <= 0)y = 0;
  }

  void detectBoundary() {
    // detect desk boundary
    // right side
    for (int i=0; i < desks.length; i++) {
      if (isHit(desks[i].x, desks[i].y, desks[i].w, desks[i].h, player.x, player.y, player.w, player.h)) {
        if (x <= desks[i].x + desks[i].w) {
          x = desks[i].x + desks[i].w;
          player.y=y;
          leftPressed = false;
        }

        if (x+w>= desks[i].x ) {
          x= desks[i].x-x-w;
          player.y=y;
          rightPressed = false;
        }
        if (y<= desks[i].y + desks[i].h) {
          y= desks[i].y + desks[i].h;
          player.x=x;
          upPressed = false;
        }
        if (y+h >= desks[i].y ) {
          y = desks[i].y-h;
          player.x=x;
          downPressed = false;
        }
      }
    }
    }

  

  Player() {
    x = PLAYER_INIT_X;
    y = PLAYER_INIT_Y;
    speed = 10;
  }

}
