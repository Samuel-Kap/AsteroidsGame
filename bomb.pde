class bomb extends Floater {
  float dRadians;
  float exSize;
  public bomb(Spaceship theShip) {
    exSize=0;
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
    fill(0, 0, 255);   
    stroke(0, 0, 255);    
    ellipse((float)myCenterX, (float)myCenterY, (float)(exSize), (float)(exSize));
  }
 
  public double getCentX() {
    return myCenterX;
  }
  public double getCentY() {
    return myCenterY;
  }
  public double getExSize() {
    return exSize;
  }
  public void destroy()   //move the floater in the current direction of travel
  {      
    if(exSize<30){exSize+=exSize;}

  }
}
