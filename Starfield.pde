Particle[]parts= new Particle[300];
void setup()
{
  size(600,600);
  for(int i=0;i<parts.length;i++)
  {
    parts[i]=new Particle();
  }
  parts[0]=new OddballParticle();
}
void draw()
{
  background(0);
  for(int i=0;i<parts.length;i++)
  {
  parts[i].move();
  parts[i].drift();
  }
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
    ellipse((float)myX, (float)myY, 9, 9);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {a
    myX = myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*3;
    myColor = color(100,200,90);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    myAngle=myAngle+0.1;
  }

  void drift()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
