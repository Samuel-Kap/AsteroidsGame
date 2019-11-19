class Star //note that this class does NOT extend Floater
{
 int myX, myY, myLight,mySize;
 Star(){
 mySize=(int)(Math.random()*15);
 myLight= (int)(Math.random()*255 +100);
 myX= (int)(Math.random()*500);
 myY= (int)(Math.random()*500);
 }
 void show(){
   fill(255,255,255, myLight);
   noStroke();
   ellipse(myX,myY,mySize,mySize);
   
 }
}
