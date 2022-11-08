float lx = 0;
float ly = 0;
float arcx = 0;
float arcy = 0;
float radius = 125;
float scale = 0;
float rotation = 0 ;

void setup() {
size(500, 500);
background(149, 167, 141);
strokeWeight(10);
stroke(248, 118, 102);
strokeJoin(ROUND);
ellipseMode(RADIUS);
rectMode(CENTER);
}

void draw() {
  background(149, 167, 141);
  resetMatrix();
  translate(width/2, height/2);
  
  
  
  
  if (keyPressed && (key == CODED)) {
    if (keyCode == LEFT) {
      rotation++;
    } else if (keyCode == RIGHT) {
      rotation--;
    }
  }
  if (keyPressed && (key == CODED)) {
    if (keyCode == UP) {
      scale++;
    } else if (keyCode == DOWN) {
      scale--;
    }
  }

  rotate(radians(rotation));
  
 

pushMatrix();
  ellipse(0, 0, radius + 165 + scale, radius + 165 + scale);

popMatrix();
pushMatrix();
//empty
popMatrix();
pushMatrix();

//main circles
  fill(149, 167, 141);
  ellipse(0, 0, radius - 65, radius - 65);
pushMatrix();
  rotate(radians(-(2 * rotation)));
float translate = 165;
  line(0,0 , 205, 205);
  line(0,0 , -205, 205);
  line(0,0 , 205, -205);
  line(0,0, -205, -205);
  arc(arcx, arcy - translate, 40, 40, PI, TWO_PI);
//bottom
  arc(arcx, arcy + translate, 40, 40, 0, PI);
//right
  arc(arcx + translate, arcy, 40, 40, -HALF_PI, PI - HALF_PI);
//left
  arc(arcx - translate, arcy, 40, 40, HALF_PI, PI+HALF_PI);
  
  square(0, 0, 125);
  
  ellipse(0, 0, radius + 40, radius + 40 );
  
popMatrix();

//bumps at compass

//top
translate = 125;

  arc(arcx, arcy - translate, 40, 40, PI, TWO_PI);
//bottom
  arc(arcx, arcy + translate, 40, 40, 0, PI);
//right
  arc(arcx + translate, arcy, 40, 40, -HALF_PI, PI - HALF_PI);
//left
  arc(arcx - translate, arcy, 40, 40, HALF_PI, PI+HALF_PI);

  ellipse(0, 0, radius, radius);

//cross lines
//I want to rotate all of these lines around (250, 250)
//Got it, moved 0,0 to the center of the page
pushMatrix();
//rotates the other direction
  square(0, 0, 85);
  line((lx + 40), (ly - 125), (lx - 125), (ly + 40));
  line((lx + 125), (ly - 40), (lx - 40), (ly + 125));
  line((lx + 125), (ly + 40), (lx - 40), (ly - 125));
  line((lx - 125), (ly - 40), (lx + 40), (ly + 125)); 
popMatrix();
popMatrix();
} 
//I used an example from github that showed how to change the point of rotation of the drawing
// Experimenting with basic shapes, the logo is loosely based on my initials, with the circles being the "O" in "Oliver" and the bumps at each compass direction making "B"s in "Baltzer".
//colors are still subject to change, experimenting with which ones I like.
