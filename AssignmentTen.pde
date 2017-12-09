// I tried my best to make it look like a ball is rolling on an axis of some sort.
// Also, my partner did not get back to me so I have no textures to use.
// I apologize for any inconvenience and will talk to you in class about this. 
PVector spherePos, boxPos, boxScale;
float sphereRadius;
float ambv1, ambv2, ambv3;
float ptv1, ptv2, ptv3;
float angle, camSpeed, x, y, z;
float lookAtX, lookAtY, lookAtZ;
float upX, upY, upZ, orthoScale;
float viewDist, extents = 250;
boolean orthographic;

void setup(){
  size(400, 400, P3D);
  surface.setResizable(true);
  surface.setTitle("Camera");
  pixelDensity(displayDensity());
  orthoScale = 2;
  orthographic = false;
  angle = 0;
  camSpeed = 5;
  
  x = width/2;
  y = height/2;
  z = viewDist = (height/2.0)/tan(PI*60.0/360.0);
  
  lookAtX = x;
  lookAtY = y;
  lookAtZ = 0;
  
  upX = 0;
  upY = 1;
  upZ = 0;
  
  boxPos = new PVector(100, height*0.1, 0);
  boxScale = new PVector(50, 100, 200);
  
  spherePos = new PVector(0, height*0.1, 0);
  sphereRadius = 75;
}

void draw(){
  directionalLight(127, 127, 127, 0, 0, -1);
  background(0);
  stroke(255);
  fill(255, 0, 255);
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, 0, PI));
  rotateY(map(mouseX, 0, width, 0, PI));

  pushMatrix();
  translate(boxPos.x, boxPos.y, boxPos.z);
  box(boxScale.x, boxScale.y, boxScale.z);
  popMatrix();

  pushMatrix();
  translate(spherePos.x, spherePos.y, spherePos.z);
  rotateY(frameCount/120.0);
  sphere(sphereRadius);
  popMatrix();
  
  if (orthographic){
    ortho(-width/orthoScale, 
      width/orthoScale, 
      -height/orthoScale, 
      height/orthoScale, 
      z/1000.0, z*1000.0);
  }else{
    perspective(PI/3.0, 
      float(width)/float(height), 
      z/2000.0, z*2000.0);
      
  boxPos.z = map(mouseX, 0, width, -75, 75);
  spherePos.z = map(mouseX, 0, width, 75, -75);
  }
}

void mousePressed(){
  ambv1 = random(0, 156);
  ambv2 = random(0, 156);
  ambv3 = random(0, 156);

  ptv1 = random(0, 156);
  ptv2 = random(0, 156);
  ptv3 = random(0, 156);
  
  orthographic = !orthographic;
}
