**I couldn't figure out how to incorporate the data in some of the files so if you're missing any information, click on the master URL.
**The screen file will be provided in the "s17_mage150_lab06_Quimby" folder. I will share the master branch link with you over D2L. 
This code is probably one of my favorite ones. In this code, we learned how to create and activate new classes in Processing. I adhered
to the theme as Screensavers and made one that will most likely give somebody a seizure. I had a lot of fun on this one even though it 
was quite stressful. 



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
