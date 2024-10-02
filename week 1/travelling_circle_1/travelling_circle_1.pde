float x;
float y;

void setup(){
  size(400,400);
  x = 200 ;
  y = 200;
  ellipse(x,y,60,60);
}

void draw(){
  x = x - 1;
  y = y - 1;
  ellipse(x,y,60,60);
}
