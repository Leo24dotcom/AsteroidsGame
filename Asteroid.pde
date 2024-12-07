class Asteroid extends Floater{
 public Asteroid(){
      corners = 6;  //the number of corners, a triangular floater has 3   
      xCorners = new int[]{-13,9,15,6,-11,-5};   
      yCorners = new int[]{-10,-10,2,12,10,2};   
      myColor = 134;   
      myCenterX = Math.random()*400;
      myCenterY = Math.random()*400; //holds center coordinates   
      myXspeed = 3; 
      myYspeed = 3; //holds the speed of travel in the x and y directions   
      myPointDirection = Math.random()*360;
 }  
 public double getX(){
  return myCenterX; 
 }
 public double getY(){
  return myCenterY;
 }
 public void move(){
   super.move();
   turn(Math.random()*10);
}
}
