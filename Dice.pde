Die bob;
int sum=0;
int [] test= new int[1];
void setup()
{
  size(600,600);
  background(0,200,0);
  noLoop();
  noStroke();
}
void draw()
{ 
for (int y = 10; y < 540; y += 60) { 
    for (int x = 40; x< 540; x += 60) {
      Die bob = new Die(x, y);
      bob.show();
    }
    cover();
    textSize(28);
}
  
}
void cover()
{
  fill(0,200,0);
rect(100,560,150,50);
fill(0,0,0);
text("Sum="+sum,100,580);
}
void mousePressed()
{
   sum=0;
  redraw();
}
class Die 
{
  int myX, myY, face;
  Die(int x, int y) //constructor
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    face=(int)(Math.random()*6)+1;
    sum+=face;
  }
  void show()
  {
    fill(255,255,255);
   rect(myX,myY,50,50,15);
   fill(0,0,0);
  if(face==1)
  ellipse(myX+25,myY+25,10,10); 
  else if(face==2)
  {
  ellipse(myX+15,myY+15,10,10);
  ellipse(myX+35,myY+35,10,10);
  }
  else if(face==3)
  {
    ellipse(myX+10,myY+10,10,10);
  ellipse(myX+25,myY+25,10,10);
  ellipse(myX+40,myY+40,10,10);
  }
  else if(face==4)
  {
   ellipse(myX+15,myY+15,10,10);
  ellipse(myX+35,myY+15,10,10);
  ellipse(myX+15,myY+35,10,10);
  ellipse(myX+35,myY+35,10,10);
 }
  else if(face==5)
  {
  ellipse(myX+10,myY+10,10,10);
  ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  ellipse(myX+40,myY+40,10,10);
  ellipse(myX+25,myY+25,10,10);
  }
  else 
 {
   ellipse(myX+15,myY+10,10,10);
  ellipse(myX+15,myY+25,10,10);
  ellipse(myX+15,myY+40,10,10);
  ellipse(myX+35,myY+10,10,10);
  ellipse(myX+35,myY+25,10,10);
  ellipse(myX+35,myY+40,10,10);
 }
  }
}
