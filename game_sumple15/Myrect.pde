class Myrect {
  float mx, my;
  int rSize;

  Myrect (float _mx, float _my) {
    mx = _mx;  
    my = _my;   
    rSize = 40;
  }

  void show() {
    rect(x, y, rSize, rSize);
    if (x > 575) {
      x -= abs(6);
    } else if ( x<20) {
      x+= abs(6);
    }
    if (y > 575) {
      y -= abs(6);
    } else if (y<20) {
      y += abs(6);
    }
  }
}