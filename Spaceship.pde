class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;  //the number of corners, a triangular floater has 3   
      xCorners = new int[]{-8,16,-8,2};   
      yCorners = new int[]{-8,0,8,0};   
      myColor = 255;   
      myCenterX = 200;
      myCenterY = 200; //holds center coordinates   
      myXspeed = 0; 
      myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = 5;
    }
    public void setXspeed(double x) {
    myXspeed = x;
  }
    public void setYspeed(double y) {
    myYspeed = y;
  }
    public void setCenterX(int c) {
    myCenterX = c;
  }
  public void setCenterY(int y) {
    myCenterY = y;
  }
  public void setmyPointDirection(int k) {
    myPointDirection = k;
  }


}//end of constructor
