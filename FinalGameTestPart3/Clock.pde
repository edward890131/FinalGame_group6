//plus time

class Clock extends Tool{
  float w = 68;
  float h = 78;
  
  Clock(float x, float y){
    super(x, y);
  }
  
  void display(){
    if(isAlive){
      image(clockImg, x, y);
    }
  }
  
  void click() {
  }
}
