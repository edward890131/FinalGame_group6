PImage Dog_hold, Dog_Introduce, Dog_normal, Turtle_Introduce, Le_hold, Le_Introduce;
PImage Le_normal, OK_hold, OK_normal, She_hold, She_Introduce, She_normal, T_hold;
PImage T_normal, T_Introduce, Teacher_hold, Teacher_Introduce, Teacher_normal, Turtle_hold,
  Turtle_normal, bg, retry_hold, retry_normal, error, start_hold, start_normal;
PImage Dog_choose, Turtle_choose, Le_choose, Teacher_choose, T_choose, She_choose, isHe_hold, isHe_normal, part2;

final int PART1_1_GAME_RUN = 0, PART1_1_GAME_CHOOSE = 1, PART1_1_GAME_WIN = 2, PART1_1_GAME_OVER = 3;
int gameState = 0;

boolean TurtleMousePressed = false;
boolean TeacherMousePressed = false;
boolean ToyzMousePressed = false;
boolean SheMousePressed = false;
boolean LeMousePressed= false;
boolean DogMousePressed= false;

void setup() {
  size(1440, 810);
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
}

void draw() {

  switch (gameState) {
  case PART1_1_GAME_RUN:
    image(bg, 0, 0);

    //turtle
    if (276 + 285 > mouseX
      && 276 < mouseX
      && 118 + 285 > mouseY
      && 118 < mouseY) {

      image(Turtle_hold, 276, 118);
      TurtleMousePressed = true ;
    } else {
      image(Turtle_normal, 276, 118);
      TurtleMousePressed = false ;
    }

    //teacher
    if (585 + 285 > mouseX
      && 585 < mouseX
      && 118 + 285 > mouseY
      && 118 < mouseY) {

      image(Teacher_hold, 585, 118);
      TeacherMousePressed = true ;
    } else {
      image(Teacher_normal, 585, 118);
      TeacherMousePressed = false ;
    }

    //toyz
    if (894 + 285 > mouseX
      && 894 < mouseX
      && 118 + 285 > mouseY
      && 118 < mouseY) {

      image(T_hold, 894, 118);
      ToyzMousePressed = true ;
    } else {
      image(T_normal, 894, 118);
      ToyzMousePressed = false ;
    }

    //she
    if (276 + 285 > mouseX
      && 276 < mouseX
      && 427 + 285 > mouseY
      && 427 < mouseY) {

      image(She_hold, 276, 427);
      SheMousePressed = true ;
    } else {
      image(She_normal, 276, 427);
      SheMousePressed = false ;
    }

    //le
    if (585 + 285 > mouseX
      && 585 < mouseX
      && 427 + 285 > mouseY
      && 427 < mouseY) {

      image(Le_hold, 585, 427);
      LeMousePressed = true ;
    } else {
      image(Le_normal, 585, 427);
      LeMousePressed = false ;
    }

    //dog
    if (894 + 285 > mouseX
      && 894 < mouseX
      && 427 + 285 > mouseY
      && 427 < mouseY) {

      image(Dog_hold, 894, 427);
      DogMousePressed = true ;
    } else {
      image(Dog_normal, 894, 427);
      DogMousePressed = false ;
    }

    //go choose mod
    if (1180 + 253 > mouseX
      && 1180 < mouseX
      && 700 + 88 > mouseY
      && 700 < mouseY) {
      image(start_hold, 1180, 700);
      if (mousePressed) {
        gameState = PART1_1_GAME_CHOOSE;
        mousePressed = false;
      }
    } else {
      image(start_normal, 1180, 700);
    }


    //show introduce
    if ( TeacherMousePressed == true ) {
      image(Teacher_Introduce, 0, 0);
    }
    if ( TurtleMousePressed == true ) {
      image(Turtle_Introduce, 0, 0);
    }
    if ( ToyzMousePressed == true ) {
      image(T_Introduce, 0, 0);
    }
    if ( SheMousePressed == true ) {
      image(She_Introduce, 0, 0);
    }
    if ( LeMousePressed == true ) {
      image(Le_Introduce, 0, 0);
    }
    if ( DogMousePressed == true ) {
      image(Dog_Introduce, 0, 0);
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
        gameState = PART1_1_GAME_WIN;
        mousePressed = false;
      }
    } else {
      image(isHe_normal, 1180, 700);
    }
    break;

  case PART1_1_GAME_WIN:
    image(part2, 0, 0);
    break;
  }
}
