class Angelball {
  float bx, by;
  //float vx, vy;
  float bvx, bvy;
  float r=0;
  boolean mb;
  float Adx, Ady;
  int time;

  Angelball(float _bx, float _by, boolean _mb, float _bvx, float _bvy, float _Adx, float _Ady) {
    bx=_bx;
    by=_by;
    mb=_mb;
    bvx=_bvx;
    bvy=_bvy;
    Adx=_Adx;
    Ady=_Ady;
  }

  void show() {

    fill(0);
    ellipse(bx, by, 10, 10);
    bx-=(bvx * Adx);
    by-=(bvy * Ady);

    if (x-20 < bx && x+20 > bx ) {
      if (y-20 < by && y+20 > by ) {
        bx = -20;
        bvx = 0;
        bvy = 0;
        Ap++;
        Abc--;
        MyHP -= 4;
        AngelBallNum++;
      }
    }

    time++;
    if (time > 200) {
      if (bx > 600 || bx < 0) {
        bvx *= -1;
      }
      if (by > 600 || by < 0) {
        bvy *= -1;
      }
    }
  }
}