// I struggled heavily on parts of this project so I used (and altered) some of your 
// ButtonPress code to help me finish.

int squareX, squareY;
int circleX, circleY;
int squareSize = 120;
int circleSize = 120;
boolean square;
boolean circle;

void setup(){
  size(400, 400);
  circleX = width/2 + 75;
  circleY = height/2 - 15;
  squareX = width/2 - 125;
  squareY = height/2 - 75;
  println("Choose one.");
}

void draw(){
  update();
  background(0);
  textSize(23);
  text("Square", 95, 300);
  text("Circle", 245, 300);
  noStroke();
  rect(squareX, squareY, squareSize, squareSize);
  noStroke();
  ellipse(circleX, circleY, circleSize, circleSize);
}

void mousePressed(){
  if (circle){
    fill(255, 0, 155, 255);
    println("You chose: Circle");
  }
  if (square){
    fill(255, 255, 0, 255);
    println("You chose: Square");
  }
}

void update(){
  if (forCircle(circleX, circleY, circleSize)){
    circle = true;
    square = false;
  }
  else if (forSquare(squareX, squareY, squareSize, squareSize)){
    square = true;
    circle = false;
  }
  else{
    square = circle = false;
  }
}

boolean forCircle(int x, int y, int diameter){
  int disX = x - mouseX;
  int disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2){
    return true;
  }
  else{
    return false;
  }
}

boolean forSquare(int x, int y, int width, int height){
  if (height + y >= mouseY && width + x >= mouseX && x <= mouseX){
    return true;
  }
  else{
    return false;
  }
}
