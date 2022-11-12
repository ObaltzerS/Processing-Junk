PImage img;
int select = 0;
string key;
void setup() {
	size(858, 733);
	img = loadImage("watershed1.jpg")
	imageMode(CENTER);
	textSize(25);

}

void draw() {
	image(img, width/2, height/2)
	
	pushMatrix(); // marker 1
	ellipse(640, 168, 10, 10);
	fill(0);
	text("Tucannon River \n Wind Farm", 650, 168);
	popMatrix();
	
	pushMatrix(); // marker 2
	ellipse(390, 475, 10, 10);
	fill(0);
	text("Welcome Table \n Farm", 400, 480);
	popMatrix();
	
	pushMatrix(); // marker 3
	ellipse(355, 420, 10, 10);
	fill(0);
	text("Landfill", 270, 420);
	popMatrix();
	
	text(select, width/2, height/2);
	
}

void keyPressed() {
	key = keyCode;
	if (keyCode == 49){
		select = 1; // these will corrospond to the sites
	} else if (keyCode == 50) {
		select = 2;
	} else if (keyCode == 51) {
		select = 3;
	}
	
}
