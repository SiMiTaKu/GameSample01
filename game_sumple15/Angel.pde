class Angel {
  float ax, ay;


  Angel(float _ax, float _ay) {
    ax=_ax;
    ay=_ay;
  }

  void show() {
    rect(ax, ay, 40, 40);
    if (ax > 1180|| ax < 620) {
      axs *= -1;
    }
    if (ay > 580|| ay < 20) {
      ays *= -1;
    }
  }
}