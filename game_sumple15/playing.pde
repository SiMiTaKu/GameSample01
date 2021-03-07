float angle=0;
float ball;

int mp, Ap;
//＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊

ArrayList<Myball> myballs = new ArrayList<Myball>();
float bx, by, dx, dy;
boolean mb = false;
float bvx = 3;
float bvy=3;
int MyBallNum = 40;

Myrect my;
float myposx;
float myposy;
float x = 300;
float y = 300;
float MyHP = 164;

Angel A;
float Ax = 900;
float Ay = 300;
float axs = random(-4, 4);
float ays = random(-4, 4); 
float AngelHP = 164;
int AngelBallNum = 40;

ArrayList<Angelball> Angelballs = new ArrayList<Angelball>();
float Abx, Aby;
boolean Ab = false;
float Avx = 3;
float Avy = 3;
float Ac;

boolean UpPressed = false;
boolean DownPressed = false;
boolean LeftPressed = false;
boolean RightPressed = false;
float mysu = 1;
float mysd = 1;
float mxsl = 1;
float mxsr = 1;

int mbc = 0;
int Abc = 0;

ArrayList<Heart> hearts = new ArrayList<Heart>();
int HeartCount;
boolean Heart = false;

void playing() {  
  pushMatrix();
  line(600, 0, 600, 700);
  line(0, 100, 1200, 100);
  fill(0);
  textSize(20);
  text("Point "+ mp, 100, 60);
  text("Point "+ Ap, 700, 60);
  text("Ball "+MyBallNum, 260, 60);
  text("Ball "+AngelBallNum, 860, 60);
  //________________________________
  rectMode(CORNER);
  fill(0);
  rect(390, 40, 164, 20);
  fill(255);
  rect(390, 40, MyHP, 20);
  fill(0);
  rect(990, 40, 164, 20);
  fill(255);
  rect(990, 40, AngelHP, 20);
  rectMode(CENTER);
  popMatrix();

  translate(0, 100);


  my = new Myrect(x, y);
  my.show();

  for (Myball mb : myballs) {
    mb.show();
  }

  if (mbc < 40) {
    if (mb) {
      dx = ((Ax + axs)-x)/600;
      dy = ((Ay + ays)-y)/600;
      myballs.add(new Myball(x, y, mb, bvx, bvy, dx, dy));
      mb=false;
      mbc++;
      if (mbc >= 0) {
        MyBallNum --;
      }
    }
  }
  //___________________________________________________________________________

  fill(0);
  A = new Angel(Ax += axs, Ay += ays);
  A.show();

  //___________________________________________________________________________
  Ac += random(0.9, 1.3);
  if (Ac >= 2) {
    Ab=true;
    Ac= random(-30, 0);
  }
  if (Abc<40) {
    if (Ab) {
      float Adx = ((Ax + axs)-x)/600;
      float Ady = ((Ay + ays)-y)/600;
      Angelballs.add(new Angelball(Ax + axs, Ay + ays, Ab, Avx, Avy, Adx, Ady));
      Ab=false;
      Abc++;
      if (Abc >= 0 ) {
        AngelBallNum --;
      }
    }
  }

  for (Angelball Ab : Angelballs) {
    Ab.show();
  }

//******  Heart  ***********************************
  
  HeartCount++;
  if (HeartCount > 600) {
    Heart = true;
    HeartCount = 0;
  }
    if(Heart){
    hearts.add(new Heart(random(10,1190),random(10,590)));
    Heart = false;
  }
  for (Heart heart : hearts) {
    heart.show();
  }


//*************************************************
  if (AngelHP == 0) {
    scene = 2;
  }
  if (MyHP == 0) {
    scene = 3 ;
  }

  //_____________________________________________________

  if (UpPressed == true) {
    mysu *= 1.04;
    y = y - mysu;
  } else {
    if (mysu > 1) {
      mysu /= 1.3;
      y = y-mysu;
    }
  }
  if (DownPressed == true) {
    mysd *= 1.04;
    y = y + mysd;
  } else {
    if (mysd > 1) {
      mysd /= 1.3;
      y = y + mysd;
    }
  }
  if (LeftPressed == true) {
    mxsl *= 1.04;
    x = x - mxsl;
  } else {
    if (mxsl > 1) {
      mxsl /= 1.3;
      x = x - mxsl;
    }
  }
  if (RightPressed == true) {
    mxsr *= 1.04;
    x = x + mxsr;
  } else {
    if (mxsr > 1) {
      mxsr /= 1.3;
      x = x + mxsr;
    }
  }

  if (mysu >= 5) {
    mysu = 5;
  }
  if (mysd >= 5) {
    mysd = 5;
  }
  if (mxsl >= 5) {
    mxsl = 5;
  }
  if (mxsr >= 5) {
    mxsr = 5;
  }
}

void keyPressed() {
  if (key==ENTER) {
    scene = 1;
  }

  if (key==' ') {
    mb = true;
  }

  switch(keyCode) {
  case UP:
    UpPressed = true;
    return;
  case DOWN:
    DownPressed = true;
    return;
  case LEFT:
    LeftPressed = true;
    return;
  case RIGHT:
    RightPressed = true;
    return;
  }
}

void keyReleased() {
  switch(keyCode) {
  case UP:
    UpPressed = false;
    return;
  case DOWN:
    DownPressed = false;
    return;
  case LEFT:
    LeftPressed = false;
    return;
  case RIGHT:
    RightPressed = false;
    return;
  }
}