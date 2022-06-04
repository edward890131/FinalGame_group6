//PImage all
PImage fail;

//PImage part1-1
PImage start, success, confirmN, confirmH, startN, startH;
PImage classroom, blackboard, footprint, garbageCan, glassBottle, hair, mouse, phone, studentCard, water, head;
PImage []part1;
PImage [] icon;

//PImage part1-2
PImage Dog_hold, Dog_Introduce, Dog_normal, Turtle_Introduce, Le_hold, Le_Introduce;
PImage Le_normal, OK_hold, OK_normal, She_hold, She_Introduce, She_normal, T_hold;
PImage T_normal, T_Introduce, Teacher_hold, Teacher_Introduce, Teacher_normal, Turtle_hold,
  Turtle_normal, bg, retry_hold, retry_normal, error, start_hold, start_normal, close;
PImage Dog_choose, Turtle_choose, Le_choose, Teacher_choose, T_choose, She_choose, isHe_hold, isHe_normal, part2;
PImage back_hold, back_normal ;

//PImage part2
PImage background, turtle1, turtle2, turtle3, pStraw, wig, title;
PImage tea1, tea3, tea2, lee, gogoro, player1, player2, player3, playerjump;
PImage dia1, dia2, dia3, startnormal, starthover, oknormal, okhover, timer;
PImage restart, restarth, lose;
PImage []diaImages;

//PImage part3
PImage part3Bg, life, title_3, partFail, restartBtnNormal, restartBtnHover, gameWin;
PImage toolbar, magnifierImg, brushImg, clockImg, freezeImg;
PImage [] strawImg = new PImage[6];
PImage [] ask = new PImage[6];
PFont font;

//all
final int START = 0, LEVEL1 = 1, LEVEL2 = 2, LEVEL3= 3, FAIL= 4;
int levelState = 1;
final int GAME_INIT_TIMER = 3600;
final int GAME_INITP2_TIMER = 2400;
int gameTimer = GAME_INIT_TIMER;
int playerHealth = 3;

//part1-1
int iconNum=0;
final int BTN_WIDTH=145, BTN_HEIGHT=76;
final int START_BUTTON_X = 1240, START_BUTTON_Y = 700;
final int PARTa_START=0, PARTa_TALK=1, PARTa_RUN=2, PARTa_OVER=3;
int gameState = PARTa_START;
int imgNum = 0;

final int WIDTH = 1440;
final int HEIGHT = 810;

int headX=1300;
int headY=30;
final int headW=60;//80
final int headH=53;//73

final int tableW=315;//375
final int tableH=145;//205
int tableX=180;//120
int tableY=145;//85
int tableX2=670;//610
int tableY2=430;//370

final int spaceW = 115;
final int spaceH = 100;

float speed = 10;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

float studentCardW=55;
float studentCardH=50;
float studentCardX=130;
float studentCardY=560;

float phoneW=66;
float phoneH=74;
float phoneX=745;
float phoneY=90;

float footprintW=146;
float footprintH=121;
float footprintX=1044;
float footprintY=417;

float hairW=80;
float hairH=49;
float hairX=410;
float hairY=500;

float waterW=650;
float waterH=123;
float waterX=420;
float waterY=590;

float garbageCanW=300;
float garbageCanH=140;
float garbageCanX=1154;
float garbageCanY=680;

float glassBottleW=603;
float glassBottleH=88;
float glassBottleX=320;
float glassBottleY=750;

float cabinetW=60;
float cabinetH=97;
float cabinetX=216;
float cabinetY=713;

float blackboardW=207;
float blackboardH=566;
float blackboardX=1400;
float blackboardY=140;

float iconW=131;
float iconH=131;
float iconX=1276;
float iconY=176;

int m = millis();

final int timegap = 500;
float oldtime;
float nowtime;
float deltatime;

int part1Timer = millis();

Player1 playerP1;
Desk [] desks;
Key [] keys;

//part1-2
final int PART1_1_GAME_RUN = 0, PART1_1_GAME_CHOOSE = 1, PART1_1_GAME_WIN = 2, PART1_1_GAME_OVER = 3;
int part1gameState = 0;

boolean TurtleMousePressed = false;
boolean TeacherMousePressed = false;
boolean ToyzMousePressed = false;
boolean SheMousePressed = false;
boolean LeMousePressed= false;
boolean DogMousePressed= false;

//part2
final float SCENE_COUNT= 20;
int gameTimerP2 = GAME_INITP2_TIMER;
//int playerLife=3;
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

final int GAME_PART2_START = 0, GAME_PART2_RUN = 1, GAME_PART2_OVER = 2, GAME_PART2_WIN = 3;
int part2gameState = 0;

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

//part3
final int GAME_PART3_RUN = 0, GAME_PART3_OVER = 1, GAME_PART3_WIN = 2;
int part3_gameState = 0;

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

Straw[][] straws = new Straw[COLOR_NUM][STRAW_NUM];
int collectCount = 0;
int cupNum = 0;

Clock clock;
Magnifier magnifier;
Freeze freeze;
Brush brush;

void setup() {
  size(1440, 810, P2D);
  //background(255, 255, 255);
  frameRate(60);

  //part1-1
  start = loadImage("img/start.png");
  success= loadImage("img/success.png");
  lose= loadImage("img/lose.png");
  confirmN=loadImage("img/confirmNormal.png");
  confirmH=loadImage("img/confirmHold.png");
  startN=loadImage("img/startNormal.png");
  startH=loadImage("img/startHold.png");
  classroom= loadImage("img/classroom.png");
  blackboard= loadImage("img/blackboard.png");
  footprint= loadImage("img/footprint.png");
  garbageCan= loadImage("img/garbageCan.png");
  glassBottle= loadImage("img/glassBottle.png");
  hair= loadImage("img/hair.png");
  mouse= loadImage("img/mouse.png");
  phone= loadImage("img/phone.png");
  studentCard= loadImage("img/studentCard.png");
  water= loadImage("img/water.png");
  head= loadImage("img/head.png");

  // load part1 image
  part1 = new PImage[6];
  for (int i=0; i<6; i++) {
    part1[i] = loadImage("img/part1_0"+ i +".png");
  }

  // load icon image
  icon = new PImage[9];
  for (int i=0; i<9; i++) {
    icon[i] = loadImage("img/icon"+ i +".png");
  }

  // Initialize Player
  playerP1 = new Player1();

  // Initialize Desks and their positions
  desks = new Desk[4];
  desks[0] = new Desk(tableX, tableY);
  desks[1] = new Desk(tableX2, tableY);
  desks[2] = new Desk(tableX, tableY2);
  desks[3] = new Desk(tableX2, tableY2);

  keys = new Key[9];
  keys[0] = new Key(studentCardX, studentCardY, studentCardW, studentCardH);
  keys[1] = new Key(phoneX, phoneY, phoneW, phoneH);
  keys[2] = new Key(footprintX, footprintY, footprintW, footprintH);
  keys[3] = new Key(hairX, hairY, hairW, hairH);
  keys[4] = new Key(waterX, waterY, waterW, waterH);
  keys[5] = new Key(garbageCanX, garbageCanY, garbageCanW, garbageCanH);
  keys[6] = new Key(glassBottleX, glassBottleY, glassBottleW, glassBottleH);
  keys[7] = new Key(cabinetX, cabinetY, cabinetW, cabinetH);
  keys[8] = new Key(blackboardX, blackboardY, blackboardW, blackboardH);

  //part1-2
  bg = loadImage("img/ground.png");
  Dog_hold = loadImage("img/Dog_hold.png");
  Dog_Introduce = loadImage("img/dog_Introduce.png");
  Dog_normal = loadImage("img/Dog_normal.png");
  Turtle_Introduce = loadImage("img/Turtle_Introduce.png");
  Turtle_hold = loadImage("img/Turtle_hold.png");
  Turtle_normal = loadImage("img/Turtle_noraml.png");
  Le_hold = loadImage("img/Le_hold.png");
  Le_Introduce = loadImage("img/Le_Introduce.png");
  Le_normal = loadImage("img/Le_normal.png");
  OK_hold = loadImage("img/OK_hold.png");
  OK_normal = loadImage("img/OK_normal.png");
  She_hold = loadImage("img/She_hold.png");
  She_Introduce = loadImage("img/She_Introduce.png");
  She_normal = loadImage("img/She_normal.png");
  T_hold = loadImage("img/T_hold.png");
  T_normal = loadImage("img/T_normal.png");
  T_Introduce = loadImage("img/T_Introduce.png");
  Teacher_hold = loadImage("img/Teacher_hold.png");
  Teacher_Introduce = loadImage("img/Teacher_Interduce.png");
  Teacher_normal = loadImage("img/Teacher_normal.png");
  start_hold = loadImage("img/start_hold.png");
  start_normal= loadImage("img/start_normal.png");
  Dog_choose= loadImage("img/Dog_choose.png");
  She_choose= loadImage("img/She_choose.png");
  Teacher_choose= loadImage("img/Teacher_choose.png");
  Turtle_choose= loadImage("img/Turtle_choose.png");
  T_choose= loadImage("img/T_choose.png");
  Le_choose= loadImage("img/Le_choose.png");
  isHe_hold= loadImage("img/isHe_hold.png");
  isHe_normal= loadImage("img/isHe_normal.png");
  part2 = loadImage("img/part2.png");
  error = loadImage("img/error.png");
  retry_hold = loadImage("img/retry_hold.png");
  retry_normal = loadImage("img/retry_normal.png");
  close = loadImage("img/close.png");
  back_hold = loadImage("img/back_hold.png");
  back_normal = loadImage("img/back_normal.png");

  //img --- part2
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
  fail = loadImage("img/fail.png");

  initGamePart2();

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

  //initGamePart3();
}

void initGamePart2() {
  x=0;
  gameTimerP2 = GAME_INITP2_TIMER;
  p= new Player();
  l= new Lee();
  tea= new Tea();
  go = new Gogoro();
  t= new Turtle();
  wigs = new Wig();
  straws2 = new Straw2();
  //setup part2
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

  switch(levelState) {
  case START:
    switch(gameState) {
    case PARTa_START:
      image(start, 0, 0);

      if (START_BUTTON_X + BTN_WIDTH > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + BTN_HEIGHT > mouseY
        && START_BUTTON_Y < mouseY) {

        image(startH, START_BUTTON_X, START_BUTTON_Y);
        if (mousePressed) {

          gameState = PARTa_TALK;
          mousePressed = false;
        }
      } else {
        image(startN, START_BUTTON_X, START_BUTTON_Y);
      }

      break;

    case PARTa_TALK:
      image(part1[imgNum], 0, 0);

      if (START_BUTTON_X + BTN_WIDTH > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + BTN_HEIGHT > mouseY
        && START_BUTTON_Y < mouseY) {

        image(confirmH, START_BUTTON_X, START_BUTTON_Y);
        if (mousePressed) {

          nextImg();

          mousePressed = false;
          if (imgNum == 6) {
            gameState = PARTa_RUN;

            nextImg();
          }
        }
      } else {
        image(confirmN, START_BUTTON_X, START_BUTTON_Y);
      }

      break;

    case PARTa_RUN:
      image(classroom, 0, 0);
      image(icon[iconNum], 1276, 176);

      // Movement
      playerP1.update();

      // Table Crash
      for (int i=0; i < desks.length; i++) {

        if (desks[i].checkCollision(playerP1)) {
          playerP1.detectBoundary();
        }
      }

      //keys

      if (iconNum>5) {

        if (mousePressed) {
          if (iconX + iconW > mouseX
            && iconX < mouseX
            && iconY + iconH > mouseY
            && iconY < mouseY) {

            //gameState = PARTa_Choice;
          }
        }
      }

      if (keys[0].checkCollision(playerP1)) {
        keys[0].display();
        image(studentCard, 0, 0);
        if (keys[0].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[1].checkCollision(playerP1)) {
        keys[1].display();
        image(phone, 0, 0);
        if (keys[1].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[2].checkCollision(playerP1)) {
        keys[2].display();
        image(footprint, 0, 0);
        if (keys[2].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[3].checkCollision(playerP1)) {
        keys[3].display();
        image(hair, 0, 0);
        if (keys[3].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[4].checkCollision(playerP1)) {
        keys[4].display();
        image(water, 0, 0);
        if (keys[4].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[5].checkCollision(playerP1)) {
        keys[5].display();
        image(garbageCan, 0, 0);
        if (keys[5].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[6].checkCollision(playerP1)) {
        keys[6].display();
        image(glassBottle, 0, 0);
        if (keys[6].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[7].checkCollision(playerP1)) {
        keys[7].display();
        image(mouse, 0, 0);
        if (keys[7].keyCount ==1) {
          iconNum++;
        }
      }

      if (keys[8].checkCollision(playerP1)) {
        keys[8].display();
        image(blackboard, 0, 0);
        if (keys[8].keyCount ==1) {
          iconNum++;
        }
      }
    }
    break;

    //part1-2
  case LEVEL1:
    switch (part1gameState) {
    case PART1_1_GAME_RUN:
      image(bg, 0, 0);

      //turtle
      if (276 + 285 > mouseX
        && 276 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(Turtle_hold, 276, 118);
        if (mousePressed) {
          TurtleMousePressed = true ;
        }
      } else {
        image(Turtle_normal, 276, 118);
      }

      if (keyPressed) {
        TurtleMousePressed = false ;
      }


      //teacher
      if (585 + 285 > mouseX
        && 585 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(Teacher_hold, 585, 118);
        if (mousePressed) {
          TeacherMousePressed = true ;
        }
      } else {
        image(Teacher_normal, 585, 118);
      }
      if (keyPressed) {
        TeacherMousePressed = false ;
      }

      //toyz
      if (894 + 285 > mouseX
        && 894 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(T_hold, 894, 118);
        if (mousePressed) {
          ToyzMousePressed = true ;
        }
      } else {
        image(T_normal, 894, 118);
      }
      if (keyPressed) {
        ToyzMousePressed = false ;
      }

      //she
      if (276 + 285 > mouseX
        && 276 < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(She_hold, 276, 427);
        if (mousePressed) {
          SheMousePressed = true ;
        }
      } else {
        image(She_normal, 276, 427);
      }
      if (keyPressed) {
        SheMousePressed = false ;
      }

      //le
      if (585 + 285 > mouseX
        && 585 < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(Le_hold, 585, 427);
        if (mousePressed) {
          LeMousePressed = true ;
        }
      } else {
        image(Le_normal, 585, 427);
      }
      if (keyPressed) {
        LeMousePressed = false ;
      }

      //dog
      if (894 + 285 > mouseX
        && 894 < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(Dog_hold, 894, 427);
        if (mousePressed) {
          DogMousePressed = true ;
        }
      } else {
        image(Dog_normal, 894, 427);
      }
      if (keyPressed) {
        DogMousePressed = false ;
      }

      //go choose mod
      if (1180 + 253 > mouseX
        && 1180 < mouseX
        && 700 + 88 > mouseY
        && 700 < mouseY) {
        image(start_hold, 1180, 700);
        if (mousePressed) {
          part1gameState = PART1_1_GAME_CHOOSE;
          mousePressed = false;
        }
      } else {
        image(start_normal, 1180, 700);
      }


      //show introduce
      if ( TeacherMousePressed == true ) {
        image(Teacher_Introduce, 0, 0);
        image(close, 0, 0);
      }
      if ( TurtleMousePressed == true ) {
        image(Turtle_Introduce, 0, 0);
        image(close, 0, 0);
      }
      if ( ToyzMousePressed == true ) {
        image(T_Introduce, 0, 0);
        image(close, 0, 0);
      }
      if ( SheMousePressed == true ) {
        image(She_Introduce, 0, 0);
        image(close, 0, 0);
      }
      if ( LeMousePressed == true ) {
        image(Le_Introduce, 0, 0);
        image(close, 0, 0);
      }
      if ( DogMousePressed == true ) {
        image(Dog_Introduce, 0, 0);
        image(close, 0, 0);
      }
      break;

    case PART1_1_GAME_CHOOSE:
      image(bg, 0, 0);

      //turtle
      if (276 + 285 > mouseX
        && 276 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(Turtle_hold, 276, 118);

        if (mousePressed) {
          TurtleMousePressed = !TurtleMousePressed ;
        }
      } else {
        image(Turtle_normal, 276, 118);

        if (TurtleMousePressed == true) {
          image(Turtle_choose, 276, 118);
        }
      }

      //teacher
      if (585 + 285 > mouseX
        && 585 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(Teacher_hold, 585, 118);
        if (mousePressed) {
          TeacherMousePressed = !TeacherMousePressed ;
        }
      } else {
        image(Teacher_normal, 585, 118);

        if (TeacherMousePressed == true) {
          image(Teacher_choose, 585, 118);
        }
      }

      //Toyz
      if (894 + 285 > mouseX
        && 894 < mouseX
        && 118 + 285 > mouseY
        && 118 < mouseY) {

        image(T_hold, 894, 118);
        if (mousePressed) {
          ToyzMousePressed = !ToyzMousePressed ;
        }
      } else {
        image(T_normal, 894, 118);

        if (ToyzMousePressed == true) {
          image(T_choose, 894, 118);
        }
      }

      //She
      if (276 + 285 > mouseX
        && 276  < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(She_hold, 276, 427);
        if (mousePressed) {
          SheMousePressed = !SheMousePressed ;
        }
      } else {
        image(She_normal, 276, 427);

        if (SheMousePressed == true) {
          image(She_choose, 276, 427);
        }
      }

      //Le
      if (585 + 285 > mouseX
        && 585  < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(Le_hold, 585, 427);
        if (mousePressed) {
          LeMousePressed = !LeMousePressed ;
        }
      } else {
        image(Le_normal, 585, 427);

        if (LeMousePressed == true) {
          image(Le_choose, 585, 427);
        }
      }

      //Dog
      if (894 + 285 > mouseX
        && 894  < mouseX
        && 427 + 285 > mouseY
        && 427 < mouseY) {

        image(Dog_hold, 894, 427);
        if (mousePressed) {
          DogMousePressed = !DogMousePressed ;
        }
      } else {
        image(Dog_normal, 894, 427);

        if (DogMousePressed == true) {
          image(Dog_choose, 894, 427);
        }
      }

      //back
      if (1280 + 88 > mouseX
        && 1280 < mouseX
        && 600 + 88 > mouseY
        && 600 < mouseY) {
        image(back_hold, 1280, 600);
        if (mousePressed) {
          part1gameState = PART1_1_GAME_RUN;
          mousePressed = false;
        }
      } else {
        image(back_normal, 1280, 600);
      }

      //isHe
      if (1180 + 253 > mouseX
        && 1180 < mouseX
        && 700 + 88 > mouseY
        && 700 < mouseY) {
        image(isHe_hold, 1180, 700);
        if (mousePressed
          && TurtleMousePressed == true && DogMousePressed == false
          && ToyzMousePressed == false && TeacherMousePressed == false
          && LeMousePressed == false && SheMousePressed == false
          ) {
          part1gameState = PART1_1_GAME_WIN;
          mousePressed = false;
        }
        if (mousePressed && TurtleMousePressed == false) {
          part1gameState = PART1_1_GAME_OVER;
        }
      } else {
        image(isHe_normal, 1180, 700);
      }

      break;

    case PART1_1_GAME_WIN:
      levelState=LEVEL2;
      break;

    case PART1_1_GAME_OVER:
      image(error, 0, 0);
      TurtleMousePressed = false;
      TeacherMousePressed = false;
      ToyzMousePressed = false;
      SheMousePressed = false;
      LeMousePressed= false;
      DogMousePressed= false;

      if (500 + 253 > mouseX
        && 500 < mouseX
        && 440 + 88 > mouseY
        && 440 < mouseY) {
        image(retry_hold, 500, 440 );
        if (mousePressed) {
          part1gameState = PART1_1_GAME_CHOOSE;
          mousePressed = false;
        }
      } else {
        image(retry_normal, 500, 440 );
      }
      break;
    }

    break;

    //part2
  case LEVEL2:
    switch (part2gameState) {

    case GAME_PART2_START: // Start Screen
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
            part2gameState = GAME_PART2_RUN;
            mousePressed = false;
          }
        } else {

          image(startnormal, BUTTON_X, BUTTON_Y);
        }
      }
      break;

    case GAME_PART2_RUN:
      //println(x);
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

      //player
      p.display();
      p.run();
      for (int i = 0; i < playerHealth; i++) {
        image(life, 1095 + i*113, 37.5);
      }

      image(title, 37.5, 37.5);

      // part2 Time UI
      image(timer, 400, 37.5, 166.4, 69);
      textAlign(LEFT, BOTTOM);
      String timeString = convertFrameToTimeString(gameTimerP2);
      textSize(32);
      fill(getTimeTextColor(gameTimerP2));
      text(timeString, 460, 90);
      gameTimerP2 --;

      if (gameTimerP2==0 && playerHealth>1) {
        part2gameState = GAME_PART2_OVER;
      }

      if (gameTimerP2==0 && playerHealth==1) {
        levelState=FAIL;
      }
      break;

    case GAME_PART2_WIN:
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
            levelState= LEVEL3;
            initGamePart3();
            mousePressed = false;
          }
        }
        break;
      }

      break;

    case GAME_PART2_OVER:

      image(lose, 0, 0);
      image(restart, 500, 440);
      if (isMouseHit(500, 440, 253, 88)) {
        image(restarth, 500, 440);
        if (mousePressed) {
          part2gameState=GAME_PART2_RUN;
          mousePressed = false;
          playerHealth--;
          initGamePart2();
        }
      }
      break;
    }

    break;

    //part3
  case LEVEL3:
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

      //Health UI
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

      if (gameTimer==0 && playerHealth>1) {
        part3_gameState = GAME_PART3_OVER;
      }
      if (gameTimer==0 && playerHealth==1) {
        levelState=FAIL;
      }

      break;

    case GAME_PART3_OVER:
      //playerHealth--;
      image(partFail, 0, 0);
      if (isMouseHit(RESTART_BUTTON_X, RESTART_BUTTON_Y, RESTART_BUTTON_WIDTH, RESTART_BUTTON_HEIGHT)) {
        image(restartBtnHover, 500, 440);
        if (mousePressed) {
          part3_gameState = GAME_PART3_RUN;
          playerHealth--;
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
    break;

  case FAIL:
    image(fail, 0, 0);
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

void keyPressed() {
  if (key==' ') {
    p.jump();
  }
}

boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return  ax + aw > bx &&    // a right edge past b left
    ax < bx + bw &&    // a left edge past b right
    ay + ah > by&&    // a top edge past b bottom
    ay<by+bh
    ;
}

void nextImg() {
  if (imgNum<6 && imgNum>=0) {
    imgNum++;
    if (imgNum == 6) {
      gameState = PARTa_RUN;
    }
    /* image(part1[imgNum], 0, 0);*/
  }
}
