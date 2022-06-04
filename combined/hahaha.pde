//PImage all
PImage fail, okNormal, okHover, restartNormal, restartHover, startNormal, startHover, life, gameWin, partFail;

//PImage part1-1
PImage start;
PImage classroom, blackboard, footprint, garbageCan, glassBottle, hair, mouse, phone, studentCard, water, head;
PImage []part1;
PImage [] icon;

//PImage part1-2
PImage Dog_hold, Dog_Introduce, Dog_normal, Turtle_Introduce, Le_hold, Le_Introduce;
PImage Le_normal, She_hold, She_Introduce, She_normal, T_hold;
PImage T_normal, T_Introduce, Teacher_hold, Teacher_Introduce, Teacher_normal, Turtle_hold,
  Turtle_normal, bg, retry_hold, retry_normal, error, close;
PImage Dog_choose, Turtle_choose, Le_choose, Teacher_choose, T_choose, She_choose, isHe_hold, isHe_normal;
PImage back_hold, back_normal,start_hold, start_normal ;

//PImage part2
PImage background, turtle1, turtle2, turtle3, pStraw, wig, title;
PImage tea1, tea3, tea2, lee, gogoro, player1, player2, player3, playerjump;
PImage dia1, dia2, dia3, timer;
PImage []diaImages;

//PImage part3
PImage part3Bg, title_3;
PImage toolbar, magnifierImg, brushImg, clockImg, freezeImg;
PImage [] strawImg = new PImage[6];
PImage [] ask = new PImage[6];
PFont font;

//all
final int START = 0, LEVEL1 = 1, LEVEL2 = 2, LEVEL3= 3, FAIL= 4;
int levelState = 0;
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

final int tableW=375;//375
final int tableH=155;//205
int tableX=140;//120
int tableY=125;//85
int tableX2=630;//610
int tableY2=400;//370
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

float footprintW=80;//146
float footprintH=60;//121
float footprintX=1090;//1004
float footprintY=420;//417

float hairW=90;
float hairH=20;
float hairX=450;
float hairY=500;

float waterW=250;//650
float waterH=61;//123
float waterX=640;//420
float waterY=580;//590

float garbageCanW=150;//300
float garbageCanH=90;//140
float garbageCanX=1204;//1154
float garbageCanY=740;//680

float glassBottleW=550;//603
float glassBottleH=70;//88
float glassBottleX=340;//320
float glassBottleY=770;//750

float cabinetW=60;
float cabinetH=97;
float cabinetX=216;
float cabinetY=713;

float blackboardW=207;
float blackboardH=566;
float blackboardX=1430;
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

  okNormal = loadImage("imgAll/okNormal.png");
  okHover = loadImage("imgAll/okHover.png");
  startNormal=loadImage("imgAll/startNormal.png");
  startHover=loadImage("imgAll/startHover.png");
  life = loadImage("imgAll/life.png");
  restartNormal = loadImage("imgAll/restartNormal.png");
  restartHover = loadImage("imgAll/restartHover.png");
  gameWin = loadImage("imgAll/gameWin.png");
  fail = loadImage("imgAll/fail.png");

  //part1-1
  start = loadImage("img1/start.png");
  //lose= loadImage("img1/lose.png");
  classroom= loadImage("img1/classroom.png");
  blackboard= loadImage("img1/blackboard.png");
  footprint= loadImage("img1/footprint.png");
  garbageCan= loadImage("img1/garbageCan.png");
  glassBottle= loadImage("img1/glassBottle.png");
  hair= loadImage("img1/hair.png");
  mouse= loadImage("img1/mouse.png");
  phone= loadImage("img1/phone.png");
  studentCard= loadImage("img1/studentCard.png");
  water= loadImage("img1/water.png");
  head= loadImage("img1/head.png");

  // load part1 image
  part1 = new PImage[6];
  for (int i=0; i<6; i++) {
    part1[i] = loadImage("img1/part1_0"+ i +".png");
  }

  // load icon image
  icon = new PImage[10];
  for (int i=0; i<10; i++) {
    icon[i] = loadImage("img1/icon"+ i +".png");
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
  bg = loadImage("img1/ground.png");
  Dog_hold = loadImage("img1/Dog_hold.png");
  Dog_Introduce = loadImage("img1/dog_Introduce.png");
  Dog_normal = loadImage("img1/Dog_normal.png");
  Turtle_Introduce = loadImage("img1/Turtle_Introduce.png");
  Turtle_hold = loadImage("img1/Turtle_hold.png");
  Turtle_normal = loadImage("img1/Turtle_noraml.png");
  Le_hold = loadImage("img1/Le_hold.png");
  Le_Introduce = loadImage("img1/Le_Introduce.png");
  Le_normal = loadImage("img1/Le_normal.png");
  She_hold = loadImage("img1/She_hold.png");
  She_Introduce = loadImage("img1/She_Introduce.png");
  She_normal = loadImage("img1/She_normal.png");
  T_hold = loadImage("img1/T_hold.png");
  T_normal = loadImage("img1/T_normal.png");
  T_Introduce = loadImage("img1/T_Introduce.png");
  Teacher_hold = loadImage("img1/Teacher_hold.png");
  Teacher_Introduce = loadImage("img1/Teacher_Interduce.png");
  Teacher_normal = loadImage("img1/Teacher_normal.png");
  Dog_choose= loadImage("img1/Dog_choose.png");
  She_choose= loadImage("img1/She_choose.png");
  Teacher_choose= loadImage("img1/Teacher_choose.png");
  Turtle_choose= loadImage("img1/Turtle_choose.png");
  T_choose= loadImage("img1/T_choose.png");
  Le_choose= loadImage("img1/Le_choose.png");
  isHe_hold= loadImage("img1/isHe_hold.png");
  isHe_normal= loadImage("img1/isHe_normal.png");
  error = loadImage("img1/error.png");
  retry_hold = loadImage("img1/retry_hold.png");
  retry_normal = loadImage("img1/retry_normal.png");
  close = loadImage("img1/close.png");
  back_hold = loadImage("img1/back_hold.png");
  back_normal = loadImage("img1/back_normal.png");
  start_hold = loadImage("img1/start_hold.png");
  start_normal = loadImage("img1/start_normal.png");

  //img --- part2
  background = loadImage("img2/background.png");
  player1 = loadImage("img2/player1.png");
  player2 = loadImage("img2/player2.png");
  player3 = loadImage("img2/player3.png");
  playerjump = loadImage("img2/playerjump.png");
  turtle1 = loadImage("img2/turtle1.png");
  turtle2 = loadImage("img2/turtle2.png");
  turtle3 = loadImage("img2/turtle3.png");
  wig = loadImage("img2/wig.png");
  pStraw = loadImage("img2/pStraw.png");
  lee= loadImage("img2/lee.png");
  title = loadImage("img2/title.png");
  tea1 = loadImage("img2/tea1.png");
  tea3 = loadImage("img2/tea3.png");
  tea2 = loadImage("img2/tea2.png");
  gogoro = loadImage("img2/gogoro.png");
  dia1 = loadImage("img2/dia1.png");
  dia2 = loadImage("img2/dia2.png");
  dia3 = loadImage("img2/dia3.png");
  timer = loadImage("img2/timer.png");

  initGamePart2();

  //img --- part3
  part3Bg = loadImage("img3/part3Background.png");
  title_3 = loadImage("img3/title_3.png");
  partFail = loadImage("imgAll/partFail.png");
  toolbar = loadImage("img3/part3Tool/toolbar.png");
  magnifierImg = loadImage("img3/part3Tool/magnifier.png");
  brushImg = loadImage("img3/part3Tool/brush.png");
  clockImg = loadImage("img3/part3Tool/clock.png");
  freezeImg = loadImage("img3/part3Tool/freeze.png");
  for (int i=0; i<strawImg.length; i++) {
    strawImg[i] = loadImage("img3/part3Straws/straw" + i +".png");
  }
  for (int i=0; i<ask.length; i++) {
    ask[i] = loadImage("img3/part3Ask/ask" + i +".png");
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
    diaImages[i] = loadImage("img2/p" + i + ".png");
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

        image(startHover, START_BUTTON_X, START_BUTTON_Y);
        if (mousePressed) {

          gameState = PARTa_TALK;
          mousePressed = false;
        }
      } else {
        image(startNormal, START_BUTTON_X, START_BUTTON_Y);
      }

      break;

    case PARTa_TALK:
      image(part1[imgNum], 0, 0);

      if (START_BUTTON_X + BTN_WIDTH > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + BTN_HEIGHT > mouseY
        && START_BUTTON_Y < mouseY) {

        image(okHover, START_BUTTON_X, START_BUTTON_Y);
        if (mousePressed) {

          nextImg();

          mousePressed = false;
          if (imgNum == 6) {
            gameState = PARTa_RUN;

            nextImg();
          }
        }
      } else {
        image(okNormal, START_BUTTON_X, START_BUTTON_Y);
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

      if (iconNum>=5) {
        if (mousePressed && (iconX + iconW > mouseX
          && iconX < mouseX
          && iconY + iconH > mouseY
          && iconY < mouseY) ) {     
            levelState = LEVEL1;       
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
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            dia=2;
            mousePressed = false;
          }
        }
      }

      if (dia==2) {
        image(dia2, 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            dia=3;
            mousePressed = false;
          }
        }
      }

      if (dia==3) {
        image(dia3, 0, 0);
        image(startNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(startHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            part2gameState = GAME_PART2_RUN;
            mousePressed = false;
          }
        } else {

          image(startNormal, BUTTON_X, BUTTON_Y);
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
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_B;
            mousePressed = false;
          }
        }
        break;

      case DIA_B:

        image(diaImages[1], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_C;
            mousePressed = false;
          }
        }
        break;

      case DIA_C:

        image(diaImages[2], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_D;
            mousePressed = false;
          }
        }
        break;
      case DIA_D:

        image(diaImages[3], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_E;
            mousePressed = false;
          }
        }
        break;
      case DIA_E:

        image(diaImages[4], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_F;
            mousePressed = false;
          }
        }
        break;
      case DIA_F:

        image(diaImages[5], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_G;
            mousePressed = false;
          }
        }
        break;
      case DIA_G:

        image(diaImages[6], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
          if (mousePressed) {
            winState=DIA_H;
            mousePressed = false;
          }
        }
        break;
      case DIA_H:

        image(diaImages[7], 0, 0);
        image(okNormal, BUTTON_X, BUTTON_Y);
        if (isMouseHit(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT)) {

          image(okHover, BUTTON_X, BUTTON_Y);
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

      image(partFail, 0, 0);
      image(restartNormal, 500, 440);
      if (isMouseHit(500, 440, 253, 88)) {
        image(restartHover, 500, 440);
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
        image(restartHover, 500, 440);
        if (mousePressed) {
          part3_gameState = GAME_PART3_RUN;
          playerHealth--;
          mousePressed = false;
          initGamePart3();
        }
      } else {
        image(restartNormal, 500, 440);
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

void keyReleased() {
  if (key == CODED) {/*&&state==RUN*/
    switch (keyCode) {
    case UP:
      upPressed = false;
      break;
    case DOWN:
      downPressed = false;
      break;
    case LEFT:
      leftPressed = false;
      break;
    case RIGHT:
      rightPressed = false;
      break;
    }
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
    if (key == CODED) { /*&&state==RUN*/
    switch (keyCode) {
    case UP:
      upPressed = true;
      break;
    case DOWN:
      downPressed = true;
      break;
    case LEFT:
      leftPressed = true;
      break;
    case RIGHT:
      rightPressed = true;
      break;
    }
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
