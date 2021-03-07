int s = 0;
void Win(){
  s++;
  fill(0);
  textSize(60);
  text("WIN",width/2,height/2);
  if(s > 120){
    scene = 4;
  }
}