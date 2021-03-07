class Myball {
  float bx, by;
  float bvx;
  float bvy;
  float r=0;
  boolean mb;
  float mdx, mdy;
  int time;

  Myball(float _bx, float _by, boolean _mb, float _bvx, float _bvy, float _mdx, float _mdy) {
    bx=_bx;
    by=_by;
    mb=_mb;
    bvx=_bvx;
    bvy=_bvy;
    mdx=_mdx;
    mdy=_mdy;
  }

  void show() {

    fill(255);
    ellipse(bx, by, 10, 10);
    bx+=(bvx * mdx);
    by+=(bvy * mdy);

    if (Ax + axs - 20 < bx && Ax + axs + 20 > bx ) {
      if (Ay + ays -20 < by && Ay + ays +20 > by ) {
        bx = -20;
        bvx = 0;
        bvy = 0;
        mp++;
        mbc--;
        AngelHP-=4;
        MyBallNum ++;
      }
    }
   
   
  time ++;
    if (time > 200) {
      if (bx > 1200 || bx < 600) {
        bvx *= -1;
      }
      if (by > 600 || by < 0) {
        bvy *= -1;
      }
    }
  }
}