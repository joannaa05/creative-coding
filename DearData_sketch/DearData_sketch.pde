//colours and their catergories based on what i save on pinterest
color[] categoryColors = {
  color(255, 0, 0), // Red for Clothes
  color(255, 165, 0), // Orange for Makeup
  color(0, 255, 0), // Green for Hair
  color(0, 0, 255), // Blue for Art
  color(255, 255, 0) // Yellow for Food
};

void setup()
{
  size(800, 600);
  background(255);
  noLoop();
}

void draw()
{
  stroke(0);
  line(0, height/2, width, height/2); //horizontal line for time

  fill(0);
  textAlign(CENTER);
  textSize(32);
  text("What I saved on Pinterest on a Monday", width/2, 40);
//this draws the legend
  textSize(20);
  textAlign(LEFT);
  text("red for clothes", 100, 100);
  text("orange for makeup", 100, 120);
  text("green for hair", 100, 140);
  text("blue for art", 100, 160);
  text("yellow for food", 100, 180);

  //draws stars based on data
  Star(10, height/2, 5, 10, 5, categoryColors[1]);
  Star(50, height/2, 10, 20, 5, categoryColors[3]);
  Star(90, height/2, 10, 20, 5, categoryColors[2]);
  Star(120, height/2, 10, 20, 5, categoryColors[3]);
  Star(150, height/2, 10, 20, 5, categoryColors[3]);
  Star(160, height/2, 10, 20, 5, categoryColors[4]);
  Star(400, height/2, 10, 20, 5, categoryColors[0]);
  Star(470, height/2, 10, 20, 5, categoryColors[2]);
  Star(700, height/2, 10, 20, 5, categoryColors[3]);
  Star(720, height/2, 10, 20, 5, categoryColors[1]);
  Star(680, height/2, 10, 20, 5, categoryColors[4]);
}
//method for making a star based on inputs
void Star(float x, float y, float radius1, float radius2, int no_points, color c)
{
  fill(c);
  float angle = TWO_PI /no_points;
  float halfAngle = angle/2;
  beginShape();
  for (int i = 0; i < no_points; i++) {
    float sx = x + cos(angle* i) * radius2;
    float sy = y + sin(angle * i) * radius2;
    vertex(sx, sy);
    sx = x + cos (angle * i + halfAngle) * radius1;
    sy = y + sin(angle * i + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
