// Monsters moving through space. Click mouse for stars.

Monster monster1;
Monster monster2;
Monster monster3;
Star spaceStars;
boolean mouseClick = false;

void setup() {
  size(600, 400);
  monster1 = new Monster(100, 100, 100, 200, 1, 1, color(100, 200, 100));
  monster2 = new Monster(450, 430, 100, 200, 0, -1, color(100, 200, 100));
  monster3 = new Monster(200, 100, 100, 200, 5, 5, color(100, 50, 255));
  spaceStars = new Star(5, 40);
}

void draw() {
  background(0, 0, 25);
  spaceStars.display();
  monster1.speed();
  monster1.bouncePosition();
  monster1.bounceColor();
  monster1.display();
  monster2.arms();
  monster2.monsterLaunch();
  monster2.display();
  monster3.display();
  monster3.bounceColor();
  monster3.move();  //Arrows must be pressed once to move monster
}

void mousePressed() {       //Star switch on when mouse clicks and monsterLaunch is enabled
  mouseClick = !mouseClick;
}

void keyPressed() {
  //monster3.move();  //Arrows must be pressed constantly to move monster
}
