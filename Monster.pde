class Monster {
  int x;
  int y;
  int w;
  int h;
  int speedX;
  int speedY;
  color c;

  Monster(int tempX, int tempY, int tempW, int tempH, int tempSpeedX, int tempSpeedY, color tempC) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedX = tempSpeedX;
    speedY = tempSpeedY;
    c = color(tempC);
  }

  void display() {    //Display monster
    noStroke();
    fill(c);
    rect(x, y, w, h);
    rect(x+w/5, y+h, w/5, h/6.66);
    rect(x+w/1.66, y+h, w/5, h/6.66);
    fill(255);
    ellipse(x+w/3, y+h/6.06, w/5, h/10);
    ellipse(x+w/1.515, y+h/6.06, w/5, h/10);
    fill(0);
    ellipse(x+w/3, y+h/6.06, w/10, h/20);
    ellipse(x+w/1.515, y+h/6.06, w/10, h/20);
    ellipse(x+w/2, y+h/1.33, w/1.66, h/6.66);
  }

  void speed() {
    x = x + speedX; //Location changes according to speed in x axis
    y = y + speedY; //Location changes according to speed in y axis
  }

  void bouncePosition() {
    if (x > width-100 || x == 0) { //Monster hits left and right borders
      speedX *= -1;                //Speeds becomes opposite, monsters goes towards opposite direction
    }
    if (y > height-230  || y == 0) { //Monster hits top and bottom borders
      speedY *= -1;                  //Speeds becomes opposite, monsters goes towards opposite direction
    }
  }

  void bounceColor() {
    if (x == width-100 || x == 0) { //Monster hits left and right borders
      c = color(random(0, 255), random(0, 255), random(0, 255));    //Color is randomized
    }
    if (y == height-230  || y == 0) { //Monster hits top and bottom borders
      c = color(random(0, 255), random(0, 255), random(0, 255));    //Color is randomized
    }
  }

  void monsterLaunch() {
    if (mouseClick) {   //Monster lanched to space when mouse clicked
      x = x + speedX;
      y = y + speedY;
    }
  }

  void move() {
    if (x == width + w) {
      x = 0 ;
    }
    if (x == 0 - w) {
      x = width;
    }
    if (y == height + h) {
      y = 0;
    }
    if (y == 0 - h) {
      y = height;
    }

    if (key == CODED) {              //If arrow keys pressed, ball moves accordingly
      if (keyCode == UP) {
        y += - speedY ;
      } else if (keyCode == DOWN) {
        y += speedY;
      } else if (keyCode == LEFT) {
        x += -speedX;
      } else if (keyCode == RIGHT) {
        x += speedX;
      }
    }
  }

  void arms() {
    for (int i = y + 40; i < y + 200; i +=40) { //Draw monster arms
      fill(100, 200, 100);
      rect(x - 20, i, 140, 20);
    }
  }

  // VOID TRANSPARENT DOESN'T WORK (no matter which monster I choose, monster 1 becomes transparent when mouseClick = false)
  void transparent() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {  //If mouse over monster , it becomes transparent
      fill(0, 0, 25);
    }
  }
}
