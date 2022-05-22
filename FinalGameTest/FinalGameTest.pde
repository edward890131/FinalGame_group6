/*
Title
 Position: 37.5,37.5
 Size: 315*69
 
 life
 Position: 1095,37.5
 Size: 113*113
 Margin: 0
*/

PImage part3Bg, part3Block, life, title_3;
PImage [] strawImg = new PImage[6];

int playerHealth = 3;

final int BLOCK_SIZE = 80;
final int BLOCK_COL = 8;
final int BLOCK_ROW = 8;
final int BLOCK_INIT_X = 400;
final int BLOCK_INIT_Y = 88;

Straw[][] straws;
final float STRAW_INIT_X = 400;
final float STRAW_INIT_Y = 88;


void setup() {
  size(1440, 810, P2D);
  background(255, 255, 255);
  frameRate(60);

  //img --- part3
  part3Bg = loadImage("img/part3Background.png");
  part3Block = loadImage("img/part3Block.png");
  life = loadImage("img/life.png");
  title_3 = loadImage("img/title_3.png");
  for(int i=0; i<strawImg.length; i++){
    strawImg[i] = loadImage("img/straws/straw" + i +".png");
  }

  initGamePart3();
}

void initGamePart3() {
  image(part3Bg, 0, 0);
  
  //title & life
  image(title_3, 37.5, 37.5);
  image(title_3, 37.5, 37.5);

  //set block
  for (int i=0; i<BLOCK_COL; i++) {
    for (int j=0; j<BLOCK_ROW; j++) {
      image(part3Block, BLOCK_INIT_X + i*BLOCK_SIZE, BLOCK_INIT_Y + j*BLOCK_SIZE);
    }
  }

  //set straw
  for (int i=0; i<BLOCK_COL; i++) {
    for (int j=0; j<BLOCK_ROW; j++) {
      straws[i][j] = new Straw((int)random(6), STRAW_INIT_X + i*BLOCK_SIZE, STRAW_INIT_Y + j*BLOCK_SIZE);
      straws[i][j].display();
    }
  }
}


void draw() {
  
  // Health UI
  for (int i = 0; i < playerHealth; i++) {
    image(life, 1095 + i * 113, 37.5);
  }
}
