class Asteroid extends Floater {
  private int myRSpeed;
  public Asteroid() {
    myCenterX=(int)(Math.random()*500);
    myCenterY=(int)(Math.random()*500);
    myDirectionX=(Math.random()*3-2);
    myDirectionY=(Math.random()*3-2);
    myRSpeed = (int)(Math.random()*5-2);
    corners=6;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=-11;
    yCorners[0]=-8;
    xCorners[1]=7;
    yCorners[1]=-8;
    xCorners[2]=13;
    yCorners[2]=0;
    xCorners[3]=6;
    yCorners[3]=10;
    xCorners[4]=-11;
    yCorners[4]=8;
    xCorners[5]=-5;
    yCorners[5]=0;
  }
  public void move() {
    turn(myRSpeed);
    super.move();
  }
    public double getDieX() {
    return myCenterX ;
  }
  public double getDieY() {
    return myCenterX ;
  }
  public double getCentX() {
    return myCenterX;
  }
  public double getCentY() {
    return myCenterY;
  }
  public double getMpD() {
    return myPointDirection;
  }

}
