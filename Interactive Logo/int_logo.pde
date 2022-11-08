float lx = 250;
float ly = 250;
float l1x = 250;
float l1y = 250;


float radius = 125;

float rotation = 0;

void setup() {
size(500, 500);
background(149, 167, 141);
strokeWeight(10);
stroke(248, 118, 102);
strokeJoin(ROUND);
ellipseMode(RADIUS);
}

void draw() {
  
  if (keyPressed && (key == CODED)) {
    if (keyCode == LEFT) {
      l1x -= 250;
      l1y -= 250;
      rotation++;
    } else if (keyCode == RIGHT) {
      
      rotation--;
    }
  }

//main circles
fill(149, 167, 141);
ellipse(250, 250, radius, radius);
ellipse(250, 250, 60, 60);

//bumps at compass

//top
noFill();
arc(250, 125, 40, 40, PI, TWO_PI);
//bottom
arc(250, 375, 40, 40, 0, PI);
//right
arc(375, 250, 40, 40, -HALF_PI, PI - HALF_PI);
//left
arc(125, 250, 40, 40, HALF_PI, PI+HALF_PI);

//cross lines
//I want to rotate all of these lines around (250, 250)
pushMatrix();


line((lx + 40), (ly - 125), (lx - 125), (ly + 40));

popMatrix();

line((lx + 125), (ly - 40), (lx - 40), (ly + 125));
line((lx + 125), (ly + 40), (lx - 40), (ly - 125));
line((lx - 125), (ly - 40), (lx + 40), (ly + 125)); 
} 

// Experimenting with basic shapes, the logo is loosely based on my initials, with the circles being the "O" in "Oliver" and the bumps at each compass direction making "B"s in "Baltzer".
//colors are still subject to change, experimenting with which ones I like.
