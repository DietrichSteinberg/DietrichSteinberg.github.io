PImage t;
PImage d;
PImage c;
PImage j;
char currentkey = '1';
color bgc = color(255);

void setup() {
t = loadImage("troll-face.png");
d = loadImage("doge.png");
c = loadImage("cat.png");
j = loadImage("jojo.png");
size(400, 400);
background(255);
smooth();
}

void draw() {
// triggering the clear_print function
if(keyPressed) {
//clear_print(); 
}
// triggering the newkeychoice
if(mousePressed) {
  drawChoice(); 
}
println(frameCount);
record(800);
}
void drawChoice() {
 char currentkey = key;
   
switch(currentkey) {
case 't': 
  println("t");  // black line
  imageMode(CENTER);
  image(t, mouseX, mouseY, 50, 50);
  break;
case 'c': 
  println("c");  // red line
  imageMode(CENTER);
  image(c, mouseX, mouseY, 50, 50);
    break;
case 'd': 
   println("d");  // red line
  imageMode(CENTER);
  image(d, mouseX, mouseY, 50, 50);
    break;
//purple emoji
case 'j': 
   println("j");  // red line
  imageMode(CENTER);
  image(j, mouseX, mouseY, 50, 50);
  break;
case 'e': 
  println("e");  // erase with bg color
  eraser(bgc,mouseX, mouseY,25);
  break;
default:             // Default executes if the case labels
  println("None");   // don't match the switch parameter
  break;   
}
}

void eraser(color k,int lx,int ly,int sz) {
  stroke(k);
  ellipse(lx, ly, sz,sz); 
}
void record(int t){
  if (frameCount<t){
  saveFrame("video/sketch####.png");
}else{
exit();}
}
