squid[] octopis = new squid[3];
color col;



void setup() {
  size(800,800);
  background(0);
  noStroke();
  for (int i = 0; i < octopis.length; i++) {
  //octopis[0] = new Octopi(400,600,color(255,0,0),.40);
  octopis[i] = new squid(random(width),random(height),color(255,0,0),.40);
  }
}


void draw() {
  background(0);
  
  for (int i = 0; i < octopis.length; i++) {
   octopis[i].update();
  octopis[i].display();
  }
  //record(400);
}

void mouseMoved() {
  
  octopis[0].moveupdate(mouseX,mouseY-40);
  for (int i = 1; i < octopis.length; i++) {
  octopis[i].moveupdate(random(width),random(height));
} 
}

void record(int t){
  if (frameCount<t){
  saveFrame("video/images######.png");
}else{
exit();}
}
