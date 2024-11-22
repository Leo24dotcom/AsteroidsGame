Spaceship bob = new Spaceship();
Star [] jim = new Star[200];
public void setup() 
{
  size(400,400);//your code here
  for(int i = 0; i < jim.length;i++){
    jim[i] = new Star();
  }
}
public void draw() 
{
  background(0,0,0);
  bob.show();
    for(int i = 0; i < jim.length;i++){
    jim[i].show();
  }
}
public void keyPressed(){
 if(key == '1'){
   bob.move();
   bob.accelerate(2.0);
 }
  if(key == '2'){
   bob.turn(30.0);
 }
 if(key == '3'){
  bob.turn(-30.0); 
 }
 if(key == '4'){
  bob.move();
  bob.accelerate(-2.0); 
 }
 if(key == '5'){
  bob.setXspeed(0);
  bob.setYspeed(0);
  bob.accelerate(0.0); 
  bob.setCenterX((int)(Math.random()*400));
  bob.setCenterY((int)(Math.random()*400));
  bob.turn(((Math.random()*360)));
 }
}
