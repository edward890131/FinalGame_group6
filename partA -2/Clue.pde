class Key {
  float x, y;
  float w, h;
  boolean isAlive;
  boolean framecheck;
  int keyCount;
  
  
  boolean checkCollision(Player player) {
    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
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
