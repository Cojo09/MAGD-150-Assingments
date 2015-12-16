PImage img;
PImage img2;
PImage img3;
int x = 1;
float r = random(50);
int posX = 100;
  int posY = (height/2);
  int movementSize = 2;
  int pressed = 0;
int pressedState = 0;
  float gravity = 0.7;
  boolean mState = false;
  
void setup(){
  size(800,600);
  ellipseMode(CENTER);
  ellipse(posX, posY, 50, 50);
  img = loadImage("Music.gif");
  img2 = loadImage("Notes2.gif");
  img3 = loadImage("Notes3.gif");
}
void draw(){
  if (mState == false){
  background(255);
   updateBall();
   image(img,0,0);
   image(img2,20,10);
   
   
  //Timer
  line(0, 10, 800, 10);
  line(30, 5, 30, 15);
  line(60, 5, 60, 15);
  line(90, 5, 90, 15);
  line(120, 5, 120, 15);
  line(150, 5, 150, 15);
  line(180, 5, 180, 15);
  line(210, 5, 210, 15);
  line(240, 5, 240, 15);
  line(270, 5, 270, 15);
  line(300, 5, 300, 15);
  line(330, 5, 330, 15);
  line(360, 5, 360, 15);
  line(390, 5, 390, 15);
  line(420, 5, 420, 15);
  line(450, 5, 450, 15);
  line(480, 5, 480, 15);
  line(510, 5, 510, 15);
  line(540, 5, 540, 15);
  line(570, 5, 570, 15);
  line(600, 5, 600, 15);
  line(630, 5, 630, 15);
  line(660, 5, 660, 15);
  line(690, 5, 690, 15);
  line(720, 5, 720, 15);
  line(750, 5, 750, 15);
  line(780, 5, 780, 15);
   } else {
  
   }
  if (keyPressed == true) {
    image(img3,20,10);
    
  }
  
  while(x < 10){
    noFill();
    ellipse(width/2, height/2, (x * 20), (x * 20));
    x++;
    
  }
   
}

 void updateBall(){
  if(posX+25 >= width){
    
  }

  posX = posX + movementSize;
  
  line(posX,posY+500,posX,posY+20);
  
}
void keyPressed() {
  image(img2,20,10);
}

void mousePressed(){
  mState = !mState;
println("PAUSE!");
}
