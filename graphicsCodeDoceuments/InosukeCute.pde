PImage i;
PImage i2;
PImage h;
PFont f;

void setup(){
  size(800,700);
  i = loadImage("pointing.jpg");
  i2 = loadImage("inosuke.jpg");
  h = loadImage("hand.png");
      f = createFont("Georgia", 24);
  //set the font for drawing
  textFont(f);
  // set color of text
  fill(0, 255, 0);
 // draw out text
 text("Head-Pat Inosuke", 100, 100);
}

void draw(){
    image(i, 0, 0, width, height);
    if (mousePressed){
    image(i2, 0, 0, width, height);
    }
    fill( 255,0, 0);
  text("Head-Pat Inosuke", width/2,100);
  
  // this is an example of 'and' logic
  if (keyPressed == true )  {
    fill(255, 0, 0);
    text("Inosuke is Best Boy", width/2, height/2);
  }
  hand();
  //println(frameCount);
  //record(200);
}
void hand(){
//imageMode(CENTER);
  image(h,mouseX,mouseY);
}
//void record(int t){
//  if (frameCount<t){
//  saveFrame("video/cute######.png");
//}else{
//exit();}
//}
