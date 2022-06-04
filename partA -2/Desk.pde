class Desk{
  float x, y;
  final float w = 375;
  final float h = 205;
  
   boolean checkCollision(Player player){

    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
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
