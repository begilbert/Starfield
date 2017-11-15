final static ArrayList<Particle> colony = new ArrayList();
void setup() {
  size(1000, 1000);
  colony.add(new OddballParticle((float)(Math.random()*10), (float)(Math.random() / 5)));
  colony.add(new JumboParticle());
}
void draw() {
  background(0);
  colony.add(new Particlething());
  for (Particle x: colony) {
    x.move(); 
    x.display();
  }
}
class Particlething implements Particle {
  float theta, posX, posY, radX, radY, var, deg, meme;
  Particlething() {
    super();
    deg = (float)(Math.random()*10);
    meme = (float)(Math.random() / 5);
    theta = deg;
    posX = deg;
    posY = deg;
    var = meme;
  }
  void move() {
    posX += 1;
    posY += 1;
    theta += var;
  }
  void display() {
    radX = posX * cos(theta);
    radY = posY * sin(theta);
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    ellipse(radX + 500, radY + 400, 12, 12);
  }
}
class OddballParticle implements Particle {
  float theta, posX, posY, radX, radY, var;
  OddballParticle(float deg, float meme) {
    theta = deg;
    posX = deg;
    posY = deg;
    var = meme;
  }
  void move() {
    posX += 0.1;
    posY += 0.1;
    theta += var;
  }
  void display() {
    radX = posX * cos(theta);
    radY = posY * sin(theta);
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    rect(radX + 500, radY + 400, 30, 30);
  }
}
class JumboParticle extends Particlething {
  void display() {
    radX = posX * cos(theta);
    radY = posY * sin(theta);
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    ellipse(radX + 500, radY + 400, 40, 40);
  }
}
interface Particle {
  public void display();
  public void move();
}
