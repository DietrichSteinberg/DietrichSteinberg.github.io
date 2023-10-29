int counter = 0;
float rand = 0;
String gridName = "Gary";
Float a = 50.0;
float inc = TWO_PI/40.0;
void setup() {
size(400, 400);
background(255);
  println(" The inc = " + inc);
  frameRate(10);
}

void draw() {
for (int i = height/2; i < height; i += 20) {
    for (int j =width/2 ; j < width; j += 20) {
      rand = random(255);
      fill(rand);
      rect( i+5, j+5, 10, 10 );
      println(gridName + ", now has a fill value of " + rand);
    }
  }
noStroke();

  fill(255,255,0,120);
  rect(0, counter, width - random(height), 10);
  fill(255,0,255,120);
  rect(counter, 0, 10, height - random(width));

if (counter > height) {
  background(0);
  counter = 0;
} else {
  counter+=20;
}
stroke(255, 0, 0);
 for (int i=0; i<width; i+=4) {
    line(i, 100, i, 100+sin(a)*40.0);
    println(" The angle = " + a + "The sin = " + sin(a));
    a = a + inc;
}
  println(frameCount);
record(200);
}
void record(int t){
  if (frameCount<t){
  saveFrame("video/sketch####.png");
}else{
exit();}
}
