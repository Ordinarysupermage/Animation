//Jerry Feng
//2-3
//2022/02/22
Mode1 M= new Mode1( 225, 350);
Mode2 M2= new Mode2( -1000, 350);
Mission M3 = new Mission( -2000, 0);
OFF O1 = new OFF( 225, 390);
ON O2 = new ON( -1000, 390);
Start S = new Start( 2000, 550);
Target T = new Target();
Airport A = new Airport( 2000, 2000);
Dialog D = new Dialog( 5000, 5000);
Win W = new Win(0,0);
Win2 W2 = new Win2(75, 400);
int timer = 0;
int timer2= 0;
int timer3= 0;
int signal1 = 0;
int signal2= 0;
int signal3= 0;
PImage load;
PImage Target;
PImage Airport;
PFont ka1;

void setup() {
  size(800,800);
  load = loadImage("load.jpg");
  Target = loadImage("costume1.png");
  Airport = loadImage("airport.jpeg");
  ka1 = createFont("ka1.ttf", 50);
}

void draw() {
  timer = timer + 1;
  background (0);
  W2.draw();
  W.draw();
  M.draw();
  M2.draw();
  M3.draw();
  O1.draw();
  O2.draw();
  S.draw();
  A.draw();
  T.draw();
  D.draw();
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
    rect( xpos, ypos, 420, 50);
    if ( timer > 150) {
      xpos = -1000;
    }
    if (signal2 > 99) {
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
    textSize(40);
    text( "GAME MODE OFF", xpos, ypos);
     if ( timer > 150) {
      xpos = -1000;
    }
    if (signal2 > 99) {
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
    rect( xpos, ypos, 420, 50);
    if (timer > 150) {
      xpos = 225;
    }
    if ( timer > 200) {
      xpos = -1000;
    }
    if ( signal2 > 99) {
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
    textSize(40);
    text( " Game Mode ON", xpos, ypos);
    if ( timer > 150) {
      xpos = 225;
    }
    if ( timer > 200) {
      xpos = -1000;
    }
    if (signal2 > 99) {
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
    if (signal2 > 99) {
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
    if (signal2 > 99) {
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
      xpos= 270;
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
    if (signal2 > 99) {
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
  if ( signal2 > 99) {
    xpos = -1000;
    }
  }
}

class Dialog {
  int xpos, ypos, xpos1, ypos1, xpos2, ypos2;
  
  public Dialog( int x, int y) {
    xpos = x;
    ypos = y;
    xpos1 = -1000;
    ypos1= 0;
    xpos2 = -1000;
    ypos2 = 0;
  }
  
  public void draw() {
    textSize( 20);
    text( "Ready for battle soldier?", xpos, ypos);
    if ( timer2 > 99) {
      xpos = 235;
      ypos = 700;
      timer3 = timer3 + 1;
    }
    if ( timer3 > 50) {
      xpos = -1000;
      ypos = 0;
    }
    text( "That airport is the enemy's command center" , xpos1, ypos1);
    if ( timer3 > 50) {
      xpos1 = 100;
      ypos1 = 700;
    }
    if ( timer3 > 150) {
      xpos1 = -1000;
      ypos1 = 0;
    }
    text( "Take it down!" , xpos2, ypos2);
    if ( timer3 > 150) {
      xpos2 = 300;
      ypos2 = 700;
    }
    if (timer3 > 200) {
      xpos2 = -1000;
      ypos2 = 0;
      signal1 = 100;
    }
  }
}

class Target { 
float x;
float y;
float easing = 1;
  
  public Target() {
  x = -1000;
  y = 350;
  }
  public void draw() {
    if ( signal1 > 99) {
    line(240, 300, 320, 300);
      line(320, 300, 320, 350);
      line(320, 350, 240, 350);
      line(240, 350, 240, 300);
    }
    image( Target, x, y, 100, 100);
    if ( signal1 > 99) {
      println(mouseX);
      println(mouseY);
      float targetX = mouseX;
      float dx = targetX - x;
      x += dx * easing;
      float targetY = mouseY;
      float dy = targetY - y;
      y += dy * easing;
    }
    if ( signal2 > 99) {
      x = -1000;
    }
  }
}

void mousePressed() {
  if (signal1 > 99) {
    if (mouseX > 175 && 280 > mouseX){
      if (mouseY > 225 && 330 > mouseY){
        signal2 = 100;
        signal1 = 0;
        timer = 0;
        timer2 = 0;
        timer3 = 0;
      }
    }
  }
}

class Win {
  int xpos, ypos;
  
  public Win(int x, int y) {
    xpos = x;
    ypos = y;
  }
  
  public void draw() {
    fill(0);
    stroke(0);
    rect( xpos, ypos, 800, 800);
    if (signal2 > 99){
    xpos = -1000;
    }
  }
}

class Win2 {
  int xpos, ypos, ypos2;
  
  public Win2( int x, int y) {
    xpos = x;
    ypos = y;
    ypos2 = 500;
  }
  public void draw() {
    pushMatrix();
    fill(#12FF5B);
    textSize(50);
    textFont(ka1);
    text("MISSION COMPLETE!", xpos, ypos);
    text("Respect", 250, ypos2);
    ypos2 = ypos2 + 1;
    if ( ypos2 > 830) {
      ypos2 = -100;
    }
    ypos = ypos + 1;
    if ( ypos > 820) {
      ypos = -100;
    }
    popMatrix();
  }
}
  
