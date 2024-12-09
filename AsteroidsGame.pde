Spaceship bob = new Spaceship();
Star [] jim = new Star[200];
ArrayList <Asteroid> Meeb = new ArrayList<Asteroid>();
public void setup() 
{
  size(400,400);//your code here
  for(int i = 0; i < jim.length;i++){
    jim[i] = new Star();
  }
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
  Meeb.add(new Asteroid());
}
public void draw() 
{
  background(0,0,0);
  bob.show();
    for(int i = 0; i < jim.length;i++){
    jim[i].show();
  }
  for(int i = 0; i < Meeb.size(); i++){
   Meeb.get(i).show();
   Meeb.get(i).move();
   float d =(dist((float)bob.getX(),(float)bob.getY(), (float)Meeb.get(i).getX(),(float) Meeb.get(i).getY()));
   if(d < 10)
     Meeb.remove(i);
  }
}
public void keyPressed(){
 if(key == 'w'){
   bob.move();
 }
 if(key == '1'){
     bob.accelerate(2.0); 
 }
  if(key == '2'){
   bob.turn(30.0);
 }
 if(key == '3'){
  bob.turn(-30.0); 
 }
 if(key == '4'){
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
 if(key == 'a'){
  Meeb.add(new Asteroid()); 
 }
}
