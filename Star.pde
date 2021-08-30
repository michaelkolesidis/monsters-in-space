class Star {
  int starX;
  int starY;
  int starNumber;
  int starSize;
  Star(int tempStarSize, int tempStarNumber) {
    starNumber = tempStarNumber;
    starSize = tempStarSize;
  }

  void display() {
    if (mouseClick) {         
      for (int i=0; i < starNumber; i +=1) { //Number of stars drawn at any time
        fill(150, 150, 0);
        starX = (int) random(0, width);  //Draw stars in random coordinates
        starY = (int) random(0, height);
        circle(starX, starY, starSize);
      }
    }
  }
}
