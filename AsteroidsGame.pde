Spaceship joe;
Star stuff[]= new Star[(int)(Math.random()*1000)];
public void setup() 
{
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i] = new Star();
  }
  background(60);
  size(500,500);
  joe= new Spaceship();
}
public void draw() 
{
   fill(60);
  rect(0,0,500,500);
   for (int i=0; i<stuff.length; i++)
  {
    stuff[i].show();
  }
  joe.show();
  joe.move();
}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      joe.accelerate(.1);
    }else if (keyCode== DOWN){
      joe.setMpD((int)(Math.random()*360));
      joe.setDieY(0);
      joe.setDieX(0);
      joe.setCentX((int)(Math.random()*400)+50);
      joe.setCentY((int)(Math.random()*400)+50);
  }else if (keyCode== LEFT){
    joe.turn(-10);
  }else if (keyCode== RIGHT){
    joe.turn(10);
  }
}
}
