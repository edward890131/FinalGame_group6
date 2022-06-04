class Desk{
  float x, y;
  final float w = 375;
  final float h = 205;
  
   boolean checkCollision(Player1 playerP1){

    if(isHit(x, y, w, h, playerP1.x, playerP1.y, playerP1.w, playerP1.h)){
      /*println('y');*/
      
      return true;
    }else{
       /*println('n');*/
      return false;
    }
  }
  
  // Contructor
  Desk(float x, float y){
    
    this.x = x;
    this.y = y;
  }
}
