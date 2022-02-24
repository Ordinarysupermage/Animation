//Jerry Feng
//2-3
//2022/02/22
Mode1 M= new Mode1( 250, 350);
Mode2 M2= new Mode2( -1000, 350);
Mission M3 = new Mission( -2000, 0);
OFF O1 = new OFF( 250, 395);
ON O2 = new ON( -1000, 395);
Start S = new Start( 2000, 550);
Target T = new Target( -1000, 350);
Airport A = new Airport( 2000, 2000);
int timer = 0;
int timer2= 0;
PImage load;
PImage Target;
PImage Airport;

void setup() {
  size(800,800);
  load = loadImage("load.jpg");
  Target = loadImage("costume1.png");
  Airport = loadImage("airport.jpeg");
}

void draw() {
  timer = timer + 1;
  background (0);
  M.draw();
  M2.draw();
  M3.draw();
  O1.draw();
  O2.draw();
  S.draw();
  A.draw();
  T.draw();
}


class Mode1 {
  int xpos, ypos;
  
  
  public Mode1(int x, int y) {
    xpos = x;
    ypos = y;
  }
  public void draw() {
    stroke(#ED2C1A);
    fill(#ED2C1A);
    rect( xpos, ypos, 350, 50);
    if ( timer > 150) {
      xpos = -1000;
    }
  }
}

class OFF {
  int xpos, ypos;
  
  public OFF(int x, int y) {
    xpos = x;
    ypos = y;
  }
  
  public void draw() {
    fill(#FFFFFF);
    textSize(50);
    text( "GAME MODE OFF", xpos, ypos);
     if ( timer > 150) {
      xpos = -1000;
    }
  }
}

class Mode2 {
  int xpos, ypos;
  
  public Mode2(int x, int y) {
    xpos = x;
    ypos = y;
  }
  public void draw() {
    stroke(#12FF5B);
    fill(#12FF5B);
    rect( xpos, ypos, 350, 50);
    if (timer > 150) {
      xpos = 250;
    }
    if ( timer > 200) {
      xpos = -1000;
    }
  }
}

class ON {
  int xpos, ypos;
  
  public ON(int x, int y) {
    xpos = x;
    ypos = y;
  }
  public void draw() {
    fill(#FFFFFF);
    textSize(50);
    text( " Game Mode ON", xpos, ypos);
    if ( timer > 150) {
      xpos = 250;
    }
    if ( timer > 200) {
      xpos = -1000;
    }
  }
}

class Mission {
  int xpos, ypos, xpos2, ypos2;
  
  public Mission(int x, int y) {
    xpos = x;
    ypos = y;
    xpos2 = -1000;
    ypos2 = -1000;
  }
  public void draw() {
    image(load, xpos, ypos, 800, 800);
    if (timer > 200) {
      xpos = 0;
      ypos = 0;
    }
    if (timer2 > 99) {
      xpos = -1000;
  }
    fill(0);
    stroke(0);
    rect( xpos2, ypos2, 330, 200);
    if (timer > 200) {
      xpos2 = 470;
      ypos2 = 630;
    }
    if (timer2 > 99) {
      xpos2 = -1000;
    }
  }
}

class Start {
  int xpos, ypos;
  
  public Start(int x, int y) {
    xpos= x;
    ypos =y;
  }
  
  public void draw() {
    textSize(50);
    text(" START ", xpos, ypos);
    if (timer > 200) {
      xpos= 325;
      ypos= 550;
    }
    if (mousePressed == true) {
      if ( mouseX > 330 && mouseX < 480){
        if ( mouseY > 510 && mouseY < 560){
          timer2 = 100;
        }
      }
    }
    if (timer2 > 99) {
      xpos = -1000;
    }
  }
}

class Airport {
  int xpos, ypos;
  
  public Airport(int x, int y) {
    xpos = x;
    ypos = y;
  }
  
  public void draw() {
    if ( timer2 > 99) {
      xpos = 0;
      ypos = 0;
    }
    image(Airport, xpos, ypos, 800, 800);
  }
}

class Target {
  int xpos, ypos;
  
  public Target(int x, int y) {
    xpos = x;
    ypos = y;
  }
  public void draw() {
    image( Target, xpos, ypos, 100, 100);
    if ( timer2 > 99) {
    xpos = 350;
    ypos = 350;
    }
  }
}
    
