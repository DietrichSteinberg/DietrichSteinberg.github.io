PImage m;


void setup(){
  size(900,600);
  frameRate(30);
  m =loadImage("range.png");
}
void draw(){
//mountain range image
//cload();
cloadFill();
  translate(0,height/2);
image(m,0,0,width,height/2);
//record(200);
}

void record(int t){
  if (frameCount<t){
  saveFrame("video/images######.png");
}else{
exit();}
}
