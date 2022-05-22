  //straw color -- number
  //Blue = 0  Green = 1  Grey = 2  Yellow = 3  Purple = 4  Pink = 5

class Straw{
  
  PImage [] straw = new PImage[6];
  float x, y;
  int colorNum;
  boolean isAlive;
  
  Straw(int colorNum, float x, float y){
    isAlive = true;
    this.colorNum = colorNum;
    this.x = x;
    this.y = y;
  }
  
  void display(){
    image(strawImg[colorNum], x, y);
  }
  
  void isAlive(){
    
  }
  
  void fallDown(){
    
  }
  
}
