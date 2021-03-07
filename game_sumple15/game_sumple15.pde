int scene=0;

void setup() {
  size(1200, 700);
  rectMode(CENTER);
}

void draw() {
  background(255);
  fill(255);
  switch (scene) {
  case 0:
    opening();
    break;
  case 1:
    playing();
    break;
  case 2:
    Win();
    break;
  case 3:
    Lose();
    break;
   default:
    exit();
    
  }
}