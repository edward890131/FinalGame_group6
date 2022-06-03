
PImage part3Bg, life, title_3, partFail, restartBtnNormal, restartBtnHover, gameWin;
PImage toolbar, magnifierImg, brushImg, clockImg, freezeImg;
PImage [] strawImg = new PImage[6];
PImage [] ask = new PImage[6];
PFont font;

final int GAME_PART3_RUN = 0, GAME_PART3_OVER = 1, GAME_PART3_WIN = 2;
int part3_gameState = 0;

final int GAME_INIT_TIMER = 3600;
int gameTimer = GAME_INIT_TIMER;
final float CLOCK_BONUS_SECONDS = 15f;

final float RESTART_BUTTON_X = 500;
final float RESTART_BUTTON_Y = 440;
final float RESTART_BUTTON_WIDTH = 253;
final float RESTART_BUTTON_HEIGHT = 88;
final float ASK_X = 1070;
final float ASK_Y = 550;

final float BLOCK_X = 384;
final float BLOCK_Y = 86;
final float BLOCK_W = 640;
final float BLOCK_H = 640;
final float TOOL_BAR_X = 1090;
final float TOOL_BAR_Y = 170;

int colorNum;
final int COLOR_NUM = 6; //0,1,2,3,4,5,6
final int STRAW_NUM = 20; //10 straws / color

int playerHealth = 3;

Straw[][] straws = new Straw[COLOR_NUM][STRAW_NUM];
int collectCount = 0;
int cupNum = 0;

Clock clock;
Magnifier magnifier;
Freeze freeze;
Brush brush;

void setup() {
  size(1440, 810, P2D);
  background(255, 255, 255);
  frameRate(60);

  //img --- part3
  part3Bg = loadImage("img/part3Background.png");
  life = loadImage("img/life.png");
  title_3 = loadImage("img/title_3.png");
  partFail = loadImage("img/partFail.png");
  restartBtnNormal = loadImage("img/restartBtnNormal.png");
  restartBtnHover = loadImage("img/restartBtnHover.png");
  gameWin = loadImage("img/gameWin.png");

  toolbar = loadImage("img/part3Tool/toolbar.png");
  magnifierImg = loadImage("img/part3Tool/magnifier.png");
  brushImg = loadImage("img/part3Tool/brush.png");
  clockImg = loadImage("img/part3Tool/clock.png");
  freezeImg = loadImage("img/part3Tool/freeze.png");
  for (int i=0; i<strawImg.length; i++) {
    strawImg[i] = loadImage("img/part3Straws/straw" + i +".png");
  }
  for (int i=0; i<ask.length; i++) {
    ask[i] = loadImage("img/part3Ask/ask" + i +".png");
  }

  font = createFont("font/font.ttf", 100);
  textFont(font);

  initGamePart3();
}

void initGamePart3() {
  image(part3Bg, 0, 0);
  image(title_3, 37.5, 37.5);
  image(title_3, 37.5, 37.5);
  image(toolbar, TOOL_BAR_X, TOOL_BAR_Y);

  //set straw
  for (int i=0; i<COLOR_NUM; i++) {
    for (int j=0; j<STRAW_NUM; j++) {
      straws[i][j] = new Straw(i);
    }
  }

  //set tools
  clock = new Clock(1115, 215);
  magnifier = new Magnifier(1215, 220);
  freeze = new Freeze(1315, 220);

  gameTimer = GAME_INIT_TIMER;
}


void draw() {
  background(255, 255, 255);
  image(part3Bg, 0, 0);
  image(title_3, 37.5, 37.5);
  image(title_3, 37.5, 37.5);
  image(toolbar, TOOL_BAR_X, TOOL_BAR_Y);

  switch(part3_gameState) {

  case GAME_PART3_RUN:

    //cup & ask
    if (collectCount < STRAW_NUM * 1) {  //red
      cupNum = 0;
      image(ask[0], ASK_X, ASK_Y);
      clock.isAlive = false;
      magnifier.isAlive = false;
      freeze.isAlive = false;
    } else if (collectCount < STRAW_NUM * 2) {  //yellow
      cupNum = 1;
      image(ask[1], ASK_X, ASK_Y);
      clock.isAlive = clock.isClick ? false : true;
      magnifier.isAlive = false;
      freeze.isAlive = false;
    } else if (collectCount < STRAW_NUM * 3) { //green
      cupNum = 2;
      image(ask[2], ASK_X, ASK_Y);
      clock.isAlive = clock.isClick ? false : true;
      magnifier.isAlive = magnifier.isClick ? false : true;
      freeze.isAlive = false;
    } else if (collectCount < STRAW_NUM * 4) { //blue
      cupNum = 3;
      image(ask[3], ASK_X, ASK_Y);
      clock.isAlive = clock.isClick ? false : true;
      magnifier.isAlive = magnifier.isClick ? false : true;
      freeze.isAlive = freeze.isClick ? false : true;
    } else if (collectCount < STRAW_NUM * 5) { //purple
      cupNum = 4;
      image(ask[4], ASK_X, ASK_Y);
      clock.isAlive = clock.isClick ? false : true;
      magnifier.isAlive = magnifier.isClick ? false : true;
      freeze.isAlive = freeze.isClick ? false : true;
    } else if (collectCount < STRAW_NUM * 6) { //grey
      cupNum = 5;
      image(ask[5], ASK_X, ASK_Y);
      clock.isAlive = clock.isClick ? false : true;
      magnifier.isAlive = magnifier.isClick ? false : true;
      freeze.isAlive = freeze.isClick ? false : true;
    } else if (collectCount == STRAW_NUM * 6) { //win
      cupNum = 6;
      part3_gameState = GAME_PART3_WIN;
    }

    //tools
    clock.display();
    clock.click();
    magnifier.display();
    magnifier.click();
    freeze.display();
    freeze.click();


    //straw
    for (int i=0; i<COLOR_NUM; i++) {
      for (int j=0; j<STRAW_NUM; j++) {
        straws[i][j].update();
        straws[i][j].display();
        straws[i][j].click();
      }
    }

    // Health UI
    for (int i = 0; i < playerHealth; i++) {
      image(life, 1095 + i * 113, 37.5);
    }

    //cup number
    fill(109, 87, 72);
    textSize(100);
    text(cupNum, 250, 570);

    // Time UI
    textAlign(LEFT, BOTTOM);
    String timeString = convertFrameToTimeString(gameTimer);
    textSize(44);
    fill(0, 120);
    text(timeString, 173, 698 + 3);
    fill(getTimeTextColor(gameTimer));
    text(timeString, 170, 698);
    gameTimer --;

    if (gameTimer==0) {
      part3_gameState = GAME_PART3_OVER;
    }

    break;

  case GAME_PART3_OVER:
    image(partFail, 0, 0);
    if (isMouseHit(RESTART_BUTTON_X, RESTART_BUTTON_Y, RESTART_BUTTON_WIDTH, RESTART_BUTTON_HEIGHT)) {
      image(restartBtnHover, 500, 440);
      if (mousePressed) {
        part3_gameState = GAME_PART3_RUN;
        mousePressed = false;
        initGamePart3();
      }
    } else {
      image(restartBtnNormal, 500, 440);
    }
    break;

  case GAME_PART3_WIN:
    image(gameWin, 0, 0);
    break;
  }
}


boolean isMouseHit(float bx, float by, float bw, float bh) {
  return  mouseX > bx &&
    mouseX < bx + bw &&
    mouseY > by &&
    mouseY < by + bh;
}

void addTime(float seconds) {
  gameTimer += round(seconds * 60);
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
}
