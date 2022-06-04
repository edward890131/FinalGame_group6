/*
PImage background, turtle1, turtle2, turtle3, pStraw, wig, title, life;
PImage tea1, tea3, tea2, lee, gogoro, player1, player2, player3, playerjump;
PImage dia1, dia2, dia3, startnormal, starthover, oknormal, okhover, timer;
PImage restart, restarth, lose;
PImage []diaImages;

final int GAME_INIT_TIMER = 3600;
final float SCENE_COUNT= 20;
int gameTimer = GAME_INIT_TIMER;
int playerLife=3;
int playerHeight=1125/3;
int playerWidth=600/3;
int turtleHeight=1125/3;
int turtleWidth=1050/3;
float strawSize=263/2;
float teaSize=263/2;
float leeSize=975/3.5;
int x=0;
float ground=800;
float leeX=4000;
float leeY=ground-975/3;
float gogoroX=20000;
float gogoroY=ground-863/3;
float gogoroWidth=863/3.5;
float gogoroHeight=750/3.5;
float turtleX=700;
float turtleY=400;
float objectY=100;
float strawX;
int frame= 60;
int moveSpeed=8;
int dia=1;
float [] tea1X;
float [] tea1Y;
float [] tea2X;
float [] tea2Y;
float [] tea3X;
float [] tea3Y;
float [] wigX;
float [] wigY;
float [] straws2X;
float [] straws2Y;
int num=10;


final int GAME_START = 0, GAME_RUN = 1, GAME_OVER = 2, GAME_WIN = 3;
int gameState = 0;

final int DIA_A = 0, DIA_B = 1, DIA_C = 2, DIA_D = 3, DIA_E = 4, DIA_F = 5, DIA_G = 6, DIA_H = 7;
int winState = 0;

final int BUTTON_X=1240;
final int BUTTON_Y=700;
final int BUTTON_WIDTH=145;
final int BUTTON_HEIGHT=76;

Player p;
Lee l;
Tea tea;
Straw2 straws2;
Wig wigs;
Gogoro go;
Turtle t;


void setup() {
  size(1440, 810);
  background = loadImage("part2/background.png");
  player1 = loadImage("part2/player1.png");
  player2 = loadImage("part2/player2.png");
  player3 = loadImage("part2/player3.png");
  playerjump = loadImage("part2/playerjump.png");
  turtle1 = loadImage("part2/turtle1.png");
  turtle2 = loadImage("part2/turtle2.png");
  turtle3 = loadImage("part2/turtle3.png");
  wig = loadImage("part2/wig.png");
  pStraw = loadImage("part2/pStraw.png");
  lee= loadImage("part2/lee.png");
  title = loadImage("part2/title.png");
  life = loadImage("part2/life.png");
  tea1 = loadImage("part2/tea1.png");
  tea3 = loadImage("part2/tea3.png");
  tea2 = loadImage("part2/tea2.png");
  gogoro = loadImage("part2/gogoro.png");
  dia1 = loadImage("part2/dia1.png");
  dia2 = loadImage("part2/dia2.png");
  dia3 = loadImage("part2/dia3.png");
  startnormal = loadImage("part2/startnormal.png");
  starthover = loadImage("part2/starthover.png");
  oknormal = loadImage("part2/oknormal.png");
  okhover = loadImage("part2/okhover.png");
  timer = loadImage("part2/timer.png");
  restart = loadImage("part2/restart.png");
  restarth = loadImage("part2/restarth.png");
  lose = loadImage("part2/lose.png");
  tea1X= new float[num];
  tea1Y= new float[num];
  tea2X= new float[num];
  tea2Y= new float[num];
  tea3X= new float[num];
  tea3Y= new float[num];
  wigX= new float[num];
  wigY= new float[num];
  straws2X= new float[num];
  straws2Y= new float[num];

  for (int i=0; i<tea1X.length; i++) {
    tea1X[i]=random(600);
    tea1Y[i]=150;
    tea2X[i]=random(720, 1000);
    tea2Y[i]=150;
    tea3X[i]=random(1000, 1440);
    tea3Y[i]=150;
  }


  for (int i=0; i<wigX.length; i++) {
    wigX[i]=random(800, 2000);
    wigY[i]=600;
    straws2X[i]=random(500, 800);
    straws2Y[i]=600;
  }

  diaImages = new PImage[8];
  for (int i = 0; i < diaImages.length; i++) {
    diaImages[i] = loadImage("part2/p" + i + ".png");
  }

  initGame();
}

void initGame() {
  x=0;
  gameTimer = GAME_INIT_TIMER;
  p= new Player();
  l= new Lee();
  tea= new Tea();
  go = new Gogoro();
  t= new Turtle();
  wigs = new Wig();
  straws2 = new Straw2();
}


void draw() {

  switch (gameState) {

  case GAME_START: // Start Screen
    if (dia==1) {
      image(dia1, 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          dia=2;
          mousePressed = false;
        }
      }
    }

    if (dia==2) {
      image(dia2, 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          dia=3;
          mousePressed = false;
        }
      }
    }

    if (dia==3) {
      image(dia3, 0, 0);
      image(startnormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(starthover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          gameState = GAME_RUN;
          mousePressed = false;
        }
      } else {

        image(startnormal, BUTTON_X, BUTTON_Y);
      }
    }
    break;


  case GAME_RUN:
    println(x);
    //bg move
    pushMatrix();
    translate(x, 0);
    for (int i=0; i<21; i++) {
      image(background, i*1440, 0, 1440, height);
    }

    x-=moveSpeed;
    for (int i=0; i<10; i++) {
      tea1X[i]-=moveSpeed;
      tea2X[i]-=moveSpeed;
      tea3X[i]-=moveSpeed;
      wigX[i]-=moveSpeed;
      straws2X[i]-=moveSpeed;
    }

    popMatrix();

    //tea
    tea.display();
    tea.checkCollision();

    wigs.display();
    wigs.checkCollision();

    straws2.display();
    straws2.checkCollision();

    //obstacles
    l.display();
    l.move();
    go.display();
    go.move();

    //turtle
    t.display();
    t.run();

    //player life
    p.display();
    p.run();
    for (int i = 0; i < playerLife; i++) {
      image(life, 1095 + i*113, 37.5);
    }

    image(title, 37.5, 37.5);

    // Time UI
    image(timer, 400, 37.5, 166.4, 69);
    textAlign(LEFT, BOTTOM);
    String timeString = convertFrameToTimeString(gameTimer);
    textSize(40);
    fill(getTimeTextColor(gameTimer));
    text(timeString, 460, 94);
    gameTimer --;

    if (gameTimer==0) {
      gameState = GAME_OVER;
    }
    break;

  case GAME_WIN:
    switch (winState) {
    case DIA_A:

      image(diaImages[0], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_B;
          mousePressed = false;
        }
      }
      break;

    case DIA_B:

      image(diaImages[1], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_C;
          mousePressed = false;
        }
      }
      break;

    case DIA_C:

      image(diaImages[2], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_D;
          mousePressed = false;
        }
      }
      break;
    case DIA_D:

      image(diaImages[3], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_E;
          mousePressed = false;
        }
      }
      break;
    case DIA_E:

      image(diaImages[4], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_F;
          mousePressed = false;
        }
      }
      break;
    case DIA_F:

      image(diaImages[5], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_G;
          mousePressed = false;
        }
      }
      break;
    case DIA_G:

      image(diaImages[6], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          winState=DIA_H;
          mousePressed = false;
        }
      }
      break;
    case DIA_H:

      image(diaImages[7], 0, 0);
      image(oknormal, BUTTON_X, BUTTON_Y);
      if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

        image(okhover, BUTTON_X, BUTTON_Y);
        if (mousePressed) {
          mousePressed = false;
        }
      }
      break;
    }

    break;

  case GAME_OVER:
    image(lose, 0, 0);
    image(restart, 500, 440);
    if (isMouseHit(500, 440, 253, 88)) {
      image(restarth, 500, 440);
      if (mousePressed) {
        gameState=GAME_RUN;
        mousePressed = false;
        initGame();
      }
    }
    break;
  }
}

boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return  ax + aw > bx &&    // a right edge past b left
    ax < bx + bw &&    // a left edge past b right
    ay + ah > by&&    // a top edge past b bottom
    ay<by+bh
    ;
}

boolean isMouseHit(float bx, float by, float bw, float bh) {
  return  mouseX > bx &&
    mouseX < bx + bw &&
    mouseY > by &&
    mouseY < by + bh;
}

void keyPressed() {
  if (key==' ') {
    p.jump();
  }
}


color getTimeTextColor(int frames) {
  if (frames >= 3600) {
    return #00ffff;
  } else if (frames >= 2400) {
    return #7C675A;
  } else if (frames >= 1200) {
    return #ffcc00;
  } else if (frames >= 600) {
    return #ff6600;
  }
  return #ff0000;
}

String convertFrameToTimeString(int frames) {
  String result = "";
  float totalSeconds = float(frames) / 60;
  result += nf(floor(totalSeconds/60), 2);
  result += ":";
  result += nf(floor(totalSeconds%60), 2);
  return result;
}*/
