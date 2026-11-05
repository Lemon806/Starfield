//your code here
void setup()
{
  size(600,600);
}
void draw()
{
  //your code here
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }

  void drift()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*3;
    myColor = color(100,200,90);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    myAngle=myAngle+0.3
  }

  void drift()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
  }
