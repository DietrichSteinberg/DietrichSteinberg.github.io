// Example 4.4 Adjustable Array Version
PImage m;
PImage s;
PImage u;
int count = 30;
float[] posX = new float[count];
float[] posY = new float[count];
float[] speedX = new float[count];
float[] speedY = new float[count];
float[] sizeW = new float[count];
float[] sizeH = new float[count];
//int[] colors = new int[count];
//new arrays
int[] deg = new int[count];
int[] alp = new int[count];
int[] red = new int[count];
int[] green = new int[count];
int[] blue = new int[count];
int[] obt = new int[count];//choose an object

void setup() {
  size(600, 600);
  m = loadImage("moonCopy.png");
  s = loadImage("galaxySpace.jpg");
  u = loadImage("ufo.png");
  for (int i=0; i < posX.length; i++) {
    posX[i] = width/2;
    posY[i] = height/2;
    speedX[i] = random(-5, 5);
    speedY[i] = random(-5, 5);
    sizeW[i] = random(30, 50);
    sizeH[i] = random(50, 100);
    //colors[i] = int(random(0, 255));
    //new array stuff(need 1 more array)
    deg[i] = int(random(0,360));
    alp[i] = int(random(0,100));
    red[i] = int(random(0,255));
    green[i] = int(random(0,255));
    blue[i] = int(random(0,255));
    obt[i] = int(random(count));
    println(obt);
  }
}
void draw() {
  rect(40, 40, width-80, height-80);
    image(s,0, 0, width, height);
  for (int i = 0; i < posX.length; i++) {
    //update all positions
    
    posX[i] += speedX[i];
    posY[i] += speedY[i];
    //draw all balls
    push();
    if (obt[i] > count/10){
      imageMode(CENTER);
    image(m,posX[i], posY[i], sizeW[i], sizeW[i]);
    fill(red[i],green[i],blue[i],alp[i]);
    ellipse(posX[i], posY[i], sizeW[i], sizeW[i]);
       rotate(radians(deg[i]));
    } else {
         image(u,posX[i], posY[i], sizeW[i], sizeW[i]);
       }
    //check boundaries for all balls
pop();
    if (posX[i] < 40+sizeW[i]/2 || posX[i] > (width-40)-sizeW[i]/2 ) {
      speedX[i] = -speedX[i];
    }
    if (posY[i] < 40+sizeW[i]/2 || posY[i] > (height-40)-sizeW[i]/2) {
      speedY[i] = -speedY[i];
    }
  }
  //record(200);
}
void record(int t){
  if (frameCount<t){
  saveFrame("video/images######.png");
}else{
exit();}
}
