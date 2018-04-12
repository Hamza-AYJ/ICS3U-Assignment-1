void setup() {
  size (600, 600);
  background(255, 165, 140);
  fill(219, 219, 219);
  textSize (32);
  text ("Assignment 1: by Hamza Shaikh", 10, 30);

  //First Screen
  textSize(16);
  text ("Intro--> ", 500, 515, 140, 130);
  fill (255);
  text ("Math Game-->", 450, 545, 140, 130);
  fill (0);
  text ("Non-Math Game-->", 410, 575, 190, 130);
}

//Intro Screen
void intro() {
  background(255, 165, 140);
  fill(219, 219, 219);
  textSize (32);
  text ("Assignment 1: by Hamza Shaikh", 10, 30);
  textSize (16);
  text ("Welcome to my Game", 6, 60);
  text ("Click on the buttons on the side of the screen to select your game :)", 5, 80);
}

void keyPressed() {
  if (key==d);
  
}

//Variables for the rectangles
int x= 575;
int w= 575;
int y= 545;
int z= 515;

//Variables for math game
int a= int(random(10));
int b= int(random(10));
int c= int(random(2));
int d= a+b;
int e= a-b;
int f= a*b;


void draw() {
  //rectangle boxes(buttons)
  noStroke();
  fill (61, 204, 201);
  rect (w, x, 25, 25);
  fill (162, 39, 219);
  rect (w, y, 25, 25);
  fill (204, 204, 204);
  rect (w, z, 25, 25);

  if (mouseX> x && mouseY > z && mousePressed) {
    //background and colour/text settings
    intro();
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (255);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game-->", 410, 575, 190, 130);
  }
  if (mouseX> x && mouseY > y && mousePressed) {
    //background and colour/text settings
    background (0);
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (0);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (255);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    //Math Game
    fill(255);
    textSize(16);
    text (a, 20, 20);
    text (b, 50, 20);
    if (c==0) {
      fill(255);
      textSize(16);
      text ("+", 35, 20);
      
    }
    if (c==1) {
      fill(255);
      textSize(16);
      text ("-", 35, 20);
    }    
    if (c==2) {
      fill(255);
      textSize(16);
      text ("x", 35, 20);
    }
  }
  if (mouseX> x && mouseY > w && mousePressed) {
    //background and colour/text settings
    background (255);
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (0);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (255);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    //Non-Math Game
  }
}
