PImage img,img1,img2;
  //Declare a variable of the type PImage
  
  import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

boolean button = false;
void setup(){
  size(700,700);
  //Make a new instance of the PImage class by loading an image file
  img = loadImage("Doorbell.png");
  img1 = loadImage("Doorbell(1).png");
  

  
  minim = new Minim(this);
  player = minim.loadFile("bell.WAV");
  input = minim.getLineIn();
  imageMode(CENTER);
}

void draw(){
  background (100);
  if (mousePressed) {
    image (img, width/2, height/2);
  } else { 
    image (img1, width/2, height/2);
   // image (img, 250,180); 
  }
}
    
void mousePressed(){
  player.play();
  if (mousePressed) {
    button = !button;
  }  
}

void mouseReleased(){
  player.close();

  //since close closes the file, we'll load it again
  player = minim.loadFile("bell.mp3");
    
}
