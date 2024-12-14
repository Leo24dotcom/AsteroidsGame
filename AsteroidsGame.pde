Spaceship bob = new Spaceship();
Star [] jim = new Star[400];
ArrayList <Asteroid> Meeb = new ArrayList<Asteroid>();
ArrayList <Bullet> Dweeb = new ArrayList<Bullet>();
int counter;
public void setup() 
{
  size(600,600);//your code here
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
  textSize(50);
  text("score: " + counter,300,300);
  bob.show();
    for(int i = 0; i < jim.length;i++){
    jim[i].show();
  }
  for(int i = 0; i < Meeb.size(); i++){
   Meeb.get(i).show();
   Meeb.get(i).move();
   float d =(dist((float)bob.getX(),(float)bob.getY(), (float)Meeb.get(i).getX(),(float) Meeb.get(i).getY()));
   if(d < 10){
     Meeb.remove(i);
     i--;
     counter += 1;
   }
  }
  for(int i = 0; i <Dweeb.size();i++){
    Dweeb.get(i).show();
    Dweeb.get(i).move();
    for(int j = 0; j < Meeb.size();j++){
    if(i >= 0 &&((dist((float)Dweeb.get(i).getX(),(float)Dweeb.get(i).getY(), (float)Meeb.get(j).getX(),(float) Meeb.get(j).getY())) < 10)){
     Meeb.remove(j);
     j--;
     counter += 1;
     Meeb.add(new Asteroid());
     Dweeb.remove(i);
     i--;
     break;
   }
    }
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
 if(key == 'b'){
  Dweeb.add(new Bullet()); 
 }
}
