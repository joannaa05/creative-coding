void setup(){
  size(600,400);
}

void draw(){
  fill(#D12424);
  noStroke();
  circle(300,200,300);
  fill(225);
  circle(300,200,185);
  fill(#151A93);
  rect(125,165,350,75);
  fill(225);
  String message = "UNDERGROUND";
  textSize(50);
  textAlign(CENTER,CENTER);
  text (message,300,200);

}
