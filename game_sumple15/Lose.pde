void Lose(){
  s++;
  fill(0);
  textSize(60);
  text("Lose",width/2,height/2);
    if(s > 120){
    scene = 4;
  }
}