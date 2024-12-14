class Bullet extends Floater{
    public Bullet(){ 
      myColor = 120;
      myCenterX = bob.getX();
      myCenterY = bob.getY();
      myXspeed = bob.getmyXspeed();
      myYspeed = bob.getmyYspeed();
      myPointDirection = bob.getPointDirection();
      accelerate(6);
    }
  public double getX(){
  return myCenterX; 
 }
 public double getY(){
  return myCenterY;
 }
 public void show(){
  ellipse((float)myCenterX,(float)myCenterY,5,5); 
 }
}
