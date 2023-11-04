int counter=0;
PImage l;
PImage b;
Float a = 0.0;
  float inc = TWO_PI/35.0;
  int counterz = 0;
void setup() {
  size(1300, 776);
  l = loadImage("Levi.png");
  b = loadImage("AttackonTitan.jpeg");
  frameRate(20);
 }

void draw() {
  image(b, 0, 0, width, height);
  noFill();
  push();
  translate(0 +counterz, 300 +sin(a)*70.0);
    a = a + inc;
    counterz+=10;
    if(counterz > width){
      counterz=0;
    }
     
  rotate(radians(counter)); 
  counter+=10;
  makeFace();
  pop();
  println(frameCount);
  //record(800);
}

//void record(int t){
  if (frameCount<t){
  saveFrame("trial_Error/images######.png");
}else{
exit();}
}

void makeFace() { 
  // draw a face!
  //note that is based on an origin in the top left corner 
  imageMode(CENTER);
  image(l, 0, 0, 200, 200);
}
