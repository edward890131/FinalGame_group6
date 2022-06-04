PImage start, success, lose, confirmN, confirmH, startN, startH;
PImage classroom, blackboard, footprint, garbageCan, glassBottle, hair, mouse, phone, studentCard, water, head;

PImage []part1;

PImage [] icon;
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
final int headW=80;
final int headH=73;

final int tableW=375;
final int tableH=205;
int tableX=120;
int tableY=85;
int tableX2=610;
int tableY2=390;
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

int frame=60;

final int timegap = 500;
float oldtime;
float nowtime;
float deltatime;

int timer = millis();




Player player;
Desk [] desks;
Key [] keys;




void setup() {
  size(1440, 810);
  frameRate(frame);

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
  player = new Player();

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
}


void draw() {
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
    player.update();


    // Table Crash
    for (int i=0; i < desks.length; i++) {

      if (desks[i].checkCollision(player)) {
        player.detectBoundary();
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

    if (keys[0].checkCollision(player)) {
      keys[0].display();
      image(studentCard, 0, 0);
      if (keys[0].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[1].checkCollision(player)) {
      keys[1].display();
      image(phone, 0, 0);
      if (keys[1].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[2].checkCollision(player)) {
      keys[2].display();
      image(footprint, 0, 0);
      if (keys[2].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[3].checkCollision(player)) {
      keys[3].display();
      image(hair, 0, 0);
      if (keys[3].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[4].checkCollision(player)) {
      keys[4].display();
      image(water, 0, 0);
      if (keys[4].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[5].checkCollision(player)) {
      keys[5].display();
      image(garbageCan, 0, 0);
      if (keys[5].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[6].checkCollision(player)) {
      keys[6].display();
      image(glassBottle, 0, 0);
      if (keys[6].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[7].checkCollision(player)) {
      keys[7].display();
      image(mouse, 0, 0);
      if (keys[7].keyCount ==1) {
        iconNum++;
      }
    }

    if (keys[8].checkCollision(player)) {
      keys[8].display();
      image(blackboard, 0, 0);
      if (keys[8].keyCount ==1) {
        iconNum++;
      }
    }
  }
}
void keyPressed() {
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

/*void iconNum() {
 if (iconNum<5&&iconNum>=0)
 iconNum++;
 image(icon[iconNum], 1276, 176);
 if (iconNum>=5)
 image(icon[5], 1276, 176);
 }*/


boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return  ax + aw > bx &&    // a right edge past b left
    ax < bx + bw &&    // a left edge past b right
    ay + ah > by &&    // a top edge past b bottom
    ay < by + bh;
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
