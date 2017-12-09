**I couldn't figure out how to incorporate the data in some of the files so if you're missing any information, click on the master URL. 
In this assignment we were supposed to create or load an image in the code. The theme given was motivational posters and when I think 
about motivation I think of working out. So I gathered up a .png image from Google that contains a weight and I used the text:
"Want to get in shape?" "Buy a gym membership!" 
Below is the code.



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
