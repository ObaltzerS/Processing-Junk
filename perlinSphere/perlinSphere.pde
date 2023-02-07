import peasy.*;

PeasyCam cam;

PVector[][] globe;
int total = 100;
float flying = 0;
float edgeCover = 200;

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
  
  //float r = 200;
  flying -= 0.03; // moves noise point
  float yoff = flying; //pass time
  for (int i = 0; i <= total; i++) { // i is latitude
    float lat = map(i, 0, total, -HALF_PI, HALF_PI);
    float xoff = 0; 
    for (int j = 0; j <= total; j++) { // j is logitude
      float lon = map(j, 0, total, -PI, PI);
      float r = map(noise(lon, lat), 0, 1, 100, 200);
      //if (j == 0){
      //  edgeCover = r;
      //} else if (j == total) {
      //  r = edgeCover;
      //}
      float x = r * sin(lon) * cos(lat); // calculate x cord of point
      float y = r * sin(lon) * sin(lat); // calculate y cord of point
      float z = r * cos(lon); // calculate z cord of point
      
      globe[i][j] = new PVector (x, y, z);
      //PVector v = PVector.random3D();
      xoff += 0.01; //update xoff
     }
     yoff += 0.01; //update yoff
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
        noStroke();
        //fill(68, 207, 144);
        vertex(v1.x, v1.y, v1.z);
        PVector v2 = globe[i+1][j];
        vertex(v2.x, v2.y, v2.z);
        
  }
  endShape();
}
    
}
