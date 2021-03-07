class Heart {
  boolean Heart;
  float HeartX ;
  float HeartY ;

  Heart(float x, float y) {
    HeartX = x;
    HeartY = y;
  }

  void show() {
    pushMatrix();
    rectMode(CORNER);
    translate(HeartX, HeartY);
    noStroke();
    fill(255, 100, 100);
    rect(-7, -7, 4, 2);
    rect(3, -7, 4, 2);
    rect(-9, -5, 8, 2);
    rect(1, -5, 8, 2);
    rect(-9, -3, 18, 2);
    rect(-9, -1, 18, 2);
    rect(-7, 1, 14, 2);
    rect(-5, 3, 10, 2);
    rect(-3, 5, 6, 2);
    rect(-1, 7, 2, 2);
    rectMode(CENTER);
    popMatrix();
    stroke(1);

    if (x-20 < HeartX-8 && x+20 > HeartX+8 ) {
      if (y-20 < HeartY-8 && y+20 > HeartY+8 ) {
        MyHP += 20;
        Heart = false;
        HeartX = -30;
      }
    }

    if (Ax + axs - 20 < HeartX-8 && Ax + axs + 20 > HeartX+8) {
      if (Ay + ays -20 < HeartY-8 && Ay + ays + 20 > HeartY+8) {
        MyHP += 20;
        HeartX = -30;
      }
    }
  }
}