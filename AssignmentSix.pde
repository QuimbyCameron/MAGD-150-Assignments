Screen myScreen;

void setup() {
  size(400, 400);
  fill(0);
  noStroke();
  frameRate(60);
  myScreen = new Screen();
}

void draw(){
  myScreen.randomBackground();
  myScreen.movingRectangle();
  myScreen.Border();
}
