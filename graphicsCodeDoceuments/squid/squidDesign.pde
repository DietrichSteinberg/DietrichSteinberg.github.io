class squid {
  float colorcount = 0;
  color oc;
  float gmt;
  float rx;
  float ry;
  float os;
  
  float[] tmArr = new float[8];
  float[] tsArr = new float[8];

  squid(float rootX, float rootY, color c, float oscale ) {
    rx = rootX;
    ry = rootY;
    oc = c; 
    os = oscale;
    gmt = 0.0;
    setupTMoves();
    
  }

  void update() {
    
    if (colorcount < 0) { 
      colorcount = 0;
    }

    if (colorcount > 255) { 
      oc = color(random(255), random(255), random(255));
    } else {
      oc = color(int(colorcount), 0, 0);
    }
    
  }

  void moveupdate(float rootX, float rootY) {
    rx = rootX;
    ry = rootY;
    colorcount+=.7;
    updateTSpeed();
  }


  void display() {
    pushMatrix();
    translate(rx, ry);
    scale((colorcount/150) + os);
    body(oc);
    head(oc);
    popMatrix();
    colorcount-=.40;
  }

  void head(color c) {
    fill(c);
    ellipse(0, 0, 100, 300);
    color ec = color(0, 0, 255);
    eye(-40, -10, ec);
    eye(40, -10, ec);
  
  }

  void eye(int lx, int ly, color c) { 
    fill(c);
    ellipse(lx, ly+65, 30, 40);
  }

  void body(color c) {
    fill(c);
    ellipse(0, 50, 90, 45);
    updateTMoves();
    tentacles(-40, 110, c, 100, .90, 95, tmArr[0]);
    tentacles(40, 110, c, 100, .90, -95, tmArr[1]);
    tentacles(-30, 125, c, 100, 1.3, 70, tmArr[2]);
    tentacles(30, 125, c, 100, 1.5, -70, tmArr[3]);
    tentacles(-12, 135, c, 130, 2, 45, tmArr[4]);
    tentacles(12, 135, c, 130, 2.1, -55, tmArr[5]);
    tentacles(-7, 145, c, 140, 2.35, 30, tmArr[6]);
    tentacles(7, 145, c, 140, 2.4, -30, tmArr[7]);
  }

  void tentacles(int lx, int ly, color c, int l, float sc, float ang, float mt) {
    fill(c);
    pushMatrix();
    translate(lx, ly);
    scale(sc);
    rotate(radians(ang+mt)); 
    ellipse(0, 0, 20, 20);
    rect(-5, 0, 12, l, 120);
    popMatrix();
  }


  void setupTMoves() {

    for ( int i=0; i < tmArr.length; i++) {      
      tsArr[i] = random(-5, 5); 
      tmArr[i]+=tsArr[i];
    }
  }



  void updateTMoves() {

    for ( int i=0; i < tmArr.length; i++) {

      float tm = tmArr[i];

      if (tm > 15 || tm < -15) {
        tsArr[i] = -tsArr[i];
      }

      tmArr[i]+=tsArr[i];
    }
  }


  void updateTSpeed() {   
    for ( int i=0; i < tmArr.length; i++) {   
      tmArr[i]=0;
      tsArr[i] = random(-5, 5);
    }
  }
}
