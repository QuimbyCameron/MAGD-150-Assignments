PFont Calibri;
PFont Cambria;
PImage img;
String first = "WANT TO GET IN SHAPE?";
String second = "BUY A GYM MEMBERSHIP!";
boolean flashNow = false;

void setup(){
  size(400, 400);
  background(200);
  textAlign(CENTER, CENTER);
  // This displays the resolution of the poster.
  pixelDensity(displayDensity());
  // This loads in the fonts from the "Tools" tab.
  Calibri = loadFont("Calibri-48.vlw");
  Cambria = loadFont("Cambria-48.vlw");
  img = loadImage("Weight.png");
}

void draw() {
  noStroke();
  textFont(Cambria);
  fill(0, 255, 255);
  textSize(25);
  // This indicates that the text will flash when activated.
  if(flashNow == true)
  fill(int(random(256)));
  else
  fill(0, 255, 255);
  text(first, 200, 50);
  
  noStroke();
  textFont(Calibri);
  fill(255, 0, 255);
  textSize(30);
  if(flashNow == true)
  fill(int(random(256)));
  else
  fill(255, 0, 255);
  text(second, 200, 350);
  
  image(img, -50, -50);
}

void mousePressed(){
  // This toggles the effect by clicking your mouse.
  flashNow =! flashNow;
}
