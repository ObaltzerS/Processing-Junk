PImage img;

void setup(){
  size(500, 500, P3D);
  img = loadImage("face.jpeg");
    
}

void draw(){

  noStroke();
  fill(random(mouseX), random(mouseX), random(mouseY));
  rotateZ(frameCount * 0.05);
  rotateX(frameCount * 0.04);
  image(img, 100, 300, 50, 50);

  
}
