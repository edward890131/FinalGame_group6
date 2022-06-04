class Key {
  float x, y;
  float w, h;
  boolean isAlive;
  boolean framecheck;
  int keyCount;
  
  
  boolean checkCollision(Player1 playerP1) {
    if(isHit(x, y, w, h, playerP1.x, playerP1.y, playerP1.w, playerP1.h)){
        keyCount++;
        return true;
    }else{
      return false;
    }
  }


  void display() {
    if (isAlive) {
      image(icon[iconNum], 1276, 176);
    }
  }
  // Contructor
  Key(float x, float y, float w, float h) {
    isAlive = true;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    keyCount=0;
  }
}
