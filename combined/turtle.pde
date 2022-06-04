class Turtle {
  float speed;
  int speed2=6;
  int backS=9;

  void display() {

    if (frame<=60 && frame>45) {
      image(turtle1, turtleX, turtleY, turtleWidth, turtleHeight);
      //turtleX+=speed;
      frame--;
    }
    if ((frame<=45 && frame>30) || frame<=15) {
      image(turtle2, turtleX, turtleY, turtleWidth, turtleHeight);
      frame--;
      if (frame==0) {
        frame+=60;
      }
    }
    if (frame<=30&& frame>15) {
      image(turtle3, turtleX, turtleY, turtleWidth, turtleHeight);
      //turtleX-=speed;
      frame--;
    }

    if (turtleX+turtleWidth> width) {
      turtleX=width-1050/3;
    }
    if (turtleX< 650) {
      turtleX=650;
    }
  }

  void run() {

if (p.playerX>0){
    turtleX+=speed;}

    /*if ((width-(turtleX+turtleWidth))<=300) {
      speed=random(2, 5);
      speed*=-1;
    }
    if ((width-(turtleX+turtleWidth))>=390) {
      speed=random(2, 5);
      speed*=-1;
    }


    if ((width-(p.playerX+p.w)<1000) ||(width-(turtleX+turtleWidth))<200 ) {
      turtleX+=speed2;
      if ((width-(turtleX+turtleWidth))<=100) {
        speed*=-1;
      }
      if ((width-(turtleX+turtleWidth))>=190) {
        speed*=-1;
      }
    }*/
  }
  
}
