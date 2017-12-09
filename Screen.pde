class Screen {
// I apologize in advance if this gives you a seizure. 
int xSpeed = 2;
int ySpeed = 1;
float xPosition = 70;
float yPosition = 70;

void randomBackground(){
// This changes the background color randomly. 
  if (xPosition <= 400 && yPosition <= 400){
    background(random(0, 255), random(0, 255), random(0, 255));
}
}

void movingRectangle() {
// This indicates where the rectangle will hit on the X-axis. 
  xPosition = xPosition + xSpeed;
  if (xPosition + 20 > 350 || xPosition - 70 < 0) {
    xSpeed *= -1;
}
// This indicates where the rectangle will hit on the Y-axis. 
  yPosition = yPosition + ySpeed;
  if (yPosition + 20 > 350 || yPosition - 70 < 0) {
    ySpeed *= -1;
}
// This makes it so that the rectangle doesn't go past the boundaries. 
  rectMode(CENTER);
// This declares the starting position and size of the rectangle. 
  rect(xPosition, yPosition, 40, 40);
}

void Border(){
fill(0);
noStroke();
rect(200, 25, 400, 50);
rect(25, 200, 50, 400);
rect(375, 200, 50, 400);
rect(200, 375, 400, 50);
}
}
