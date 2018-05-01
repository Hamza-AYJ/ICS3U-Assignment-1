void setup() { 
  size (600, 600);
  background(156, 175, 206);
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

  circleX= random(400);
  circleY= random (500);
  
  a= int(random(10));
  b= int(random(a));
  c= int(random(2));
  println(c);
 // println(answer);
}

//Intro Screen
void intro() {
  background(156, 175, 206);
  fill(219, 219, 219);
  textSize (32);
  text ("Assignment 1: by Hamza Shaikh", 10, 30);
  textSize (16);
  text ("Welcome to my Game", 6, 60);
  text ("Click on the buttons on the side of the screen to select your game :)", 5, 80);
}

//function for input sections(Math Game)


//Variables for the rectangles
int x= 575;
int w= 575;
int y= 545;
int z= 515;

//Variables for math game
int a;
int b;
int c;

int answer;
int key;

//variables for non-math game
float circleX;
float circleY;

void draw() {
  //rectangle boxes(buttons)
  noStroke();
  fill (61, 204, 201);
  rect (w, x, 25, 25);
  fill (162, 39, 219);
  rect (w, y, 25, 25);
  fill (204, 204, 204);
  rect (w, z, 25, 25);

  if (mouseX > x && mouseY > z && mousePressed) {
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
  if (mouseX > x && mouseY > y && mousePressed) {
    //background and colour/text settings
    background (0);
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (255);
    text ("New Question-->", 450, 545, 140, 130);
    fill (255);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    //Math Game
    fill(255);
    textSize(16);
    text (a, 20, 20);
    text (b, 50, 20);

    //addition
    if (c==0) {
      //formatting
      fill(255);
      textSize(16);
      text ("+", 35, 20);
      //equation: input and check
      answer=a+b;
    }
    //subtraction
    if (c==1) {
      //formatting
      fill(255);
      textSize(16);
      text ("-", 35, 20);
      //equation: input and check
      answer=a-b;
    }    

    //multiplication
    if (c==2) {
      //formatting
      fill(255);
      textSize(16);
      text ("x", 35, 20);
      //equation: input and check
      answer=a*b;
    }
  }
  if (mouseX > x && mouseY > w && mousePressed) {
    //background and colour/text settings
    background (255);
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (0);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (255);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    if (mousePressed) {
      //Non-Math Game
      //setup
      fill (0);
      textSize(20);
      text("Click on the circles,", 20, 20);
      //actual game
      ellipse (circleX, circleY, 20, 20);
    }
  }
}

void mousePressed() {
  if (mousePressed == true && mouseX < circleX+30/2 && mouseX > circleX-30/2 && mouseY < circleY+30/2 && mouseY> circleY-30/2) {
    fill(0);
    textSize(15);
    text("good job", 30, 40);
    delay(1000);
    setup();
  } else {
    fill(0);
    text("try again", 30, 40);
    delay(100);
    setup();
  }
}

void keyPressed() {
  //println(answer);
  println(key);
  if (key == answer) {
    fill (255);
    text ("right", 30, 30);
  } else {
    text("wrong", 30, 30);
  }
}
