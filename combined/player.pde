class Player {
  float vy=0 ;
  float playerX=50;
  float playerY=400;
  float gravity=0.8;
  float h = 1125/3, w = 600/3;


  void display() {
    //move
    if (playerY<400) {
      image(playerjump, playerX, playerY, w, h);
    }
    if (frame<=60 && frame>45 && playerY==400) {
      image(player1, playerX, playerY, w, h);
      frame--;
    }
    if (((frame<=45 && frame>30) || frame<=15) && playerY==400) {
      image(player2, playerX, playerY, w, h);
      frame--;
      if (frame==0) {
        frame+=60;
      }
    }
    if (frame<=30&& frame>15&& playerY==400) {
      image(player3, playerX, playerY, w, h);
      frame--;
    }
    for (int i=0; i<10; i++) {
      float a=2880*i;
      if (playerX+10<tea1X[i]+a+teaSize && playerX+w-10>tea1X[i]+a && playerY<objectY+teaSize
        ||playerX+10<tea2X[i]+a+teaSize && playerX+w-10>tea2X[i]+a && playerY<objectY+teaSize
        ||playerX+10<tea3X[i]+a+teaSize && playerX+w-10>tea3X[i]+a && playerY<objectY+teaSize) {
        playerX+=5;
      }
    }
    for (int i=0; i<10; i++) {
      float a=2000*i;
      if (playerX+10<wigX[i]+a+wigs.w && playerX+w-10>wigX[i]+a && playerY+h>wigY[i]||
        playerX+10<straws2X[i]+a+wigs.w && playerX+w-10>straws2X[i]+a && playerY+h>straws2Y[i]) {
        playerX-=2;
      }
    }
    /*
      if(playerX<Straw2X+Straw2Size && playerX+w>Straw2X &&
     playerY+h > Straw2Y+Straw2Size/2){
     playerX-=1;
     }    */



    if ((playerX<gogoroX+gogoroWidth && playerX+w>gogoroX &&
      playerY+h > gogoroY+gogoroHeight/2)|| (playerX<leeX+leeSize && playerX+w>leeX &&
      playerY+h > leeY+leeSize/2)) {
      playerX-=10;
    }

    if (isHit(playerX, playerY, w, h-80, turtleX, turtleY, turtleWidth, turtleHeight)) {
      part2gameState=GAME_PART2_WIN;
    }

    if (playerX<0) {
      playerX=0;
    }
  }

  void slow() {
    playerX-=10;
  }

  void jump() {
    if (playerY==400) {
      vy = -25;
    }
  }

  void run() {
    playerY+=vy;
    vy+=gravity;
    playerY=constrain(playerY, 0, 400);
  }
}
