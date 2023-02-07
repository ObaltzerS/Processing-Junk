import peasy.*;

PeasyCam cam;

int cols, rows;
int scl = 20;
int w = 600;
int h = 600;

float flying = 0;

float[][] terrain;

//PImage tex = loadImage("greenTex.jpg");


void setup() {
 fullScreen(P3D);
 cam = new PeasyCam(this, 200);
 cols = w / scl;
 rows = h / scl;
 terrain = new float[cols][rows];
 //textureMode(NORMAL);
 
}

void draw() {
 flying -= 0.03; // moves noise point
 float yoff = flying; 
 for (int y = 0; y < rows; y++) {
   float xoff = 0;
   for (int x = 0; x < cols; x++){
     terrain[x][y] = map(noise(xoff,yoff), 0, 1, -100, 100);
     xoff += 0.1;
   }
   yoff += 0.1;
 }
 background(0);
 noStroke();
 fill(68, 207, 144);
 lights();
 //translate(width/2, height/2);
 
 rotateX(PI/3);
 
 translate(-w/2, -h/2);
 
 for (int y = 0; y < rows-1; y++) {
   beginShape(TRIANGLE_STRIP);
   for (int x = 0; x < cols; x++){
      ///texture(tex);
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
   }
   endShape();
 }
  
}
