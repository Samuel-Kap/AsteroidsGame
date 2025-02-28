class Spaceship extends Floater {   
  public Spaceship() {
    myColor=color(0);
    myCenterX=250;
    myCenterY=250;
    myDirectionX=0;
    myDirectionY=0;
    myPointDirection=0;
    corners =20;
    xCorners= new int[]{2, 1, 1, 3, 3, -3, -3, -1, -1, -2, -2, -1, -1, -3, -3, 3, 3, 1, 1, 2};
    yCorners= new int[]{1, 2, 4, 4, 5, 5, 4, 4, 2, 1, -1, -2, -4, -4, -5, -5, -4, -4, -2, -1};
  }
  public void setDieX(int mDieX) {
    myDirectionX = mDieX;
  }
  public void setDieY(int mDieY) {
    myDirectionY = mDieY;
  }
  public void setCentX(int mCentX) {
    myCenterX = mCentX;
  }
  public void setCentY(int mCentY) {
    myCenterY = mCentY;
  }
  public void setMpD(int mPd) {
    myPointDirection = mPd;
  }

  public double getDieX() {
    return myDirectionX ;
  }
  public double getDieY() {
    return myDirectionY ;
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

  public void show () {             
    fill(myColor);   
    stroke(myColor);    

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    noStroke();
    fill(0, 0, 200, 1192);
    if (key == CODED) {
      if (keyCode == UP) {
        beginShape();
        vertex(-1, 0);
        vertex(-1, -1);
        vertex(-8, 0);
        vertex(-1, 1);
        endShape(CLOSE);
      }
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
