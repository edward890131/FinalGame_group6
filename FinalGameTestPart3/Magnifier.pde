//scale up

class Magnifier extends Tool{
  
  float w = 72;
  float h = 72;
  
  Magnifier(float x, float y){
    super(x, y);
  }
  
  void display(){
    if(isAlive){
      image(magnifierImg, x, y);
    }
  }
  
  void click() {
  }
}
