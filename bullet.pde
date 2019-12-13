class Bullet extends Floater {
  float dRadians;
  public Bullet(Spaceship theShip) {
    myPointDirection=theShip.getMpD();
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    myColor=color(255, 0, 0);
    myCenterX=theShip.getCentX();
    myCenterY=theShip.getCentY();
    myDirectionX=5 * Math.cos(dRadians) + theShip.getDieX();
    myDirectionY=5 * Math.sin(dRadians) + theShip.getDieY();
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(255, 0, 0);   
    stroke(255, 0, 0);    
    ellipse((float)myCenterX, (float)myCenterY, (float)(5), (float)(5));
  }
  //public double getDieX() {
  //  return myCenterX ;
  //}
  //public double getDieY() {
  //  return myCenterY;
  //}
  public double getCentX() {
    return myCenterX;
  }
  public double getCentY() {
    return myCenterY;
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }
  //public double getMpD() {
  //  return myPointDirection;
  //}
}
