int x= 575;
int w= 575;
int y= 545;
int z= 515;

void setup() {
  size (600, 600);
  background(244, 171, 216);
  fill(34, 229, 187);
  textSize (32);
  text ("Assignment 1", 10, 30);
}

void intro() {
  background(244, 171, 216);
  fill(34, 229, 187);
  textSize (32);
  text ("Assignment 1", 10, 30);
  textSize (16);
  text ("Insert instructions here", 6, 60);
}

void draw() {

  noStroke();
  fill (61, 204, 201);
  rect (w, x, 25, 25);
  fill (162, 39, 219);
  rect (w, y, 25, 25);
  fill (204, 204, 204);
  rect (w, z, 25, 25);
  
  if (mouseX> x && mouseY > z && mousePressed) {
    intro();
  }
  if (mouseX> x && mouseY > y && mousePressed) {
    background (0);
  }
  if (mouseX> x && mouseY > w && mousePressed) {
    background (255);
  }
}
