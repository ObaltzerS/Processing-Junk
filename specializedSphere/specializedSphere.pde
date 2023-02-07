import peasy.*;

PeasyCam cam;

PVector[][] globe;
int total = 100;

void setup() {
  fullScreen(P3D);
  cam = new PeasyCam(this, 200);
  globe = new PVector[total+1][total+1];
  
}



void draw() {
  background(0);
  fill(0);
  lights();
  
  //translate(width/2, height/2);
  
  float r = 200;
  

  for (int i = 0; i <= total; i++) { // i is latitude
    float lat = map(i, 0, total, -HALF_PI, HALF_PI);
    for (int j = 0; j <= total; j++) { // j is logitude
      float lon = map(j, 0, total, -PI, PI);
      float x = r * sin(lon) * cos(lat); // calculate x cord of point
      float y = r * sin(lon) * sin(lat); // calculate y cord of point
      float z = r * cos(lon); // calculate z cord of point
      
      globe[i][j] = new PVector (x, y, z);
      PVector v = PVector.random3D();
      
     }
  }
      
  for (int i = 0; i < total; i++) { // i is lat
    if (i%2 == 0){
      fill(0);
    } else {
      fill(255);
    }
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j++) { // j is lon
    PVector v1 = globe[i][j];
    stroke(255);
    strokeWeight(2);
    vertex(v1.x, v1.y, v1.z);
    PVector v2 = globe[i+1][j];
    vertex(v2.x, v2.y, v2.z);
    
  }
  endShape();
}
    
}
