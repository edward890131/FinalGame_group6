
PImage part3Bg, life, title_3;
PImage toolbar, magnifierImg, brushImg, clockImg;
PImage [] strawImg = new PImage[6];
PImage [] ask = new PImage[6];
PFont font;

final int GAME_PART3_RED = 0, GAME_PART3_YELLOW = 1,
  GAME_PART3_GREEN = 2, GAME_PART3_BLUE = 3,
  GAME_PART3_PURPLE = 4, GAME_PART3_GREY = 5;
int part3_gameState = 0;

final int GAME_INIT_TIMER = 7200;
int gameTimer = GAME_INIT_TIMER;
final float CLOCK_BONUS_SECONDS = 15f;

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
Brush brush;

void setup() {
  size(1440, 810, P2D);
  background(255, 255, 255);
  frameRate(60);

  //img --- part3
  part3Bg = loadImage("img/part3Background.png");
  life = loadImage("img/life.png");
  title_3 = loadImage("img/title_3.png");
  toolbar = loadImage("img/part3Tool/toolbar.png");
  magnifierImg = loadImage("img/part3Tool/magnifier.png");
  brushImg = loadImage("img/part3Tool/brush.png");
  clockImg = loadImage("img/part3Tool/clock.png");
  for (int i=0; i<strawImg.length; i++) {
    strawImg[i] = loadImage("img/part3Straws/straw" + i +".png");
  }
  for (int i=0; i<ask.length; i++) {
    ask[i] = loadImage("img/part3Ask/ask" + i +".png");
  }
  
  font = createFont("font/font.ttf", 72);
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
  
  gameTimer = GAME_INIT_TIMER;
}


void draw() {
  //part3 state
  /*
  play: red > yellow > green > blue > purple > grey / again
   */
  switch(part3_gameState) {

    case GAME_PART3_RED:
      image(ask[0], ASK_X, ASK_Y);
      if (collectCount == STRAW_NUM*1) {
        cupNum++;
        part3_gameState = GAME_PART3_YELLOW;
      }
  
      break;
  
    case GAME_PART3_YELLOW:
      image(ask[1], ASK_X, ASK_Y);
      
      clock = new Clock(1115,215);
      clock.display();
      
      if (collectCount == STRAW_NUM*2) {
        cupNum++;
        part3_gameState = GAME_PART3_GREEN;
      }
      break;
  
    case GAME_PART3_GREEN:
      image(ask[2], ASK_X, ASK_Y);
      
      magnifier = new Magnifier(1215,220);
      magnifier.display();
      
      if (collectCount == STRAW_NUM*3) {
        cupNum++;
        part3_gameState = GAME_PART3_BLUE;
      }
      break;
  
    case GAME_PART3_BLUE:
      image(ask[3], ASK_X, ASK_Y);
      
      brush = new Brush(1315,220);
      brush.display();
      
      if (collectCount == STRAW_NUM*4) {
        cupNum++;
        part3_gameState = GAME_PART3_PURPLE;
      }
      break;
  
    case GAME_PART3_PURPLE:
      image(ask[4], ASK_X, ASK_Y);
      if (collectCount == STRAW_NUM*5) {
        cupNum++;
        part3_gameState = GAME_PART3_GREY;
      }
      break;
  
    case GAME_PART3_GREY:
      image(ask[5], ASK_X, ASK_Y);
      if (collectCount == STRAW_NUM*6) {
        cupNum++;
        //part3_gameState = GAME_PART3_GREY;
      }
      break;
  }

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
  textSize(72);
  text(cupNum, 250, 550);
  
  // Time UI
    textAlign(LEFT, BOTTOM);
    String timeString = convertFrameToTimeString(gameTimer);
    textSize(44);
    fill(0, 120);
    text(timeString, 173, 698 + 3);
    fill(getTimeTextColor(gameTimer));
    text(timeString, 170, 698);
    gameTimer --;
    
}


boolean isMouseHit(float bx, float by, float bw, float bh) {
  return  mouseX > bx &&
    mouseX < bx + bw &&
    mouseY > by &&
    mouseY < by + bh;
}

void addTime(float seconds){
  gameTimer += round(seconds * 60);
}

color getTimeTextColor(int frames){
  if(frames >= 7200){
    return #00ffff;
  }else if(frames >= 3600){
    return #ffffff;
  }else if(frames >= 1800){
    return #ffcc00;
  }else if(frames >= 600){
    return #ff6600;
  }

  return #ff0000;
}

String convertFrameToTimeString(int frames){
  String result = "";
  float totalSeconds = float(frames) / 60;
  result += nf(floor(totalSeconds/60), 2);
  result += ":";
  result += nf(floor(totalSeconds%60), 2);
  return result;
}
