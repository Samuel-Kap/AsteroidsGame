Spaceship joe;
Asteroid jeff;
Star stuff[]= new Star[(int)(Math.random()*1000)];
ArrayList <Asteroid> ast =new ArrayList <Asteroid>();
ArrayList <Bullet> bull =new ArrayList <Bullet>();

public void setup() 
{
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i] = new Star();
  }
  for (int i=0; i<(int)(Math.random()*10+10); i++)
  {
    ast.add(new Asteroid());
  }

  background(192);
  size(500, 500);
  joe= new Spaceship();
  jeff=new Asteroid();
}
public void draw() 
{
  fill(130);
  stroke(130);
  rect(0, 0, 500, 500);
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i].show();
  }
  for (int i=0; i<ast.size(); i++)
  {
    ast.get(i).move();
    ast.get(i).show();
    if (dist((float)ast.get(i).getCentX(), (float) ast.get(i).getCentY(), (float)joe.getCentX(), (float)joe.getCentY())<=25) {
      ast.remove(ast.get(i));
      if (i>0)
        i--;
    }
  }
  jeff.move();
  jeff.show();
  joe.move();
  joe.show();

  for (int i=0; i<bull.size(); i++)
  {
    bull.get(i).move();
    bull.get(i).show();
  if ((int)bull.get(i).getCentX() >500)
    {     
      bull.remove(i);
      if(i>0)
      i--;
    } else if (bull.get(i).getCentX()<0)
    {     
      bull.remove(i);
            if(i>0)
            i--;
    }    else if ((int)bull.get(i).getCentY() > 500)
    {    
      bull.remove(i);
            if(i>0)
            i--;
    } else if (bull.get(i).getCentY() < 0)
    {     
      bull.remove(i);
            if(i>0)
            i--;
    }

  }
   for (int q=0; q<bull.size(); q++)
  {
     for (int n=0; n<ast.size(); n++)
  {
    if(dist((float)ast.get(n).getCentX(), (float) ast.get(n).getCentY(),(float)bull.get(q).getCentX(), (float) bull.get(q).getCentY()) < 15){
    ast.remove(n);
     if(n>0){n--;}
     bull.remove(q);
     if(q>0){q--;}
     break;
    }
  }
} 
}

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      joe.accelerate(.1);
    } else if (keyCode== DOWN) {
      joe.setMpD((int)(Math.random()*360));
      joe.setDieY(0);
      joe.setDieX(0);
      joe.setCentX((int)(Math.random()*400)+50);
      joe.setCentY((int)(Math.random()*400)+50);
    } else if (keyCode== LEFT) {
      joe.turn(-10);
    } else if (keyCode== RIGHT) {
      joe.turn(10);
    } else if (keyCode== SHIFT) {
      bull.add(new Bullet(joe));
    }
  }
}
