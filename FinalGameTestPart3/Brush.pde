//change color

class Brush extends Tool{
  
  float w = 70;
  float h = 74;
  
  Brush(float x, float y){
    super(x, y);
  }
  
  void display(){
    if(isAlive){
      image(brushImg, x, y);
    }
  }
  
  void click() {
  }
}
