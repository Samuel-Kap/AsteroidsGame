Spaceship joe;
Asteroid jeff;
Star stuff[]= new Star[(int)(Math.random()*1000)];
Asteroid pp[]= new Asteroid[(int)(Math.random()*10+10)];
public void setup() 
{
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i] = new Star();
  }
  for (int i=0; i<pp.length; i++)
  {
    pp[i] = new Asteroid();
  }
  background(192);
  size(500,500);
  jeff=new Asteroid();
  joe= new Spaceship();
}
public void draw() 
{
   fill(130);
  rect(0,0,500,500);
   for (int i=0; i<stuff.length; i++)
  {
    stuff[i].show();
  }
  for (int i=0; i<pp.length; i++)
  {
    pp[i].move();
    pp[i].show();
  }
  jeff.move();
  jeff.show();
  joe.move();
  joe.show();
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
