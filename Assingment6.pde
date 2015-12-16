int x = 1;
float r = random(50);
int posX = 100;
  int posY = (height/2);
  int movementSize = 1;
  int pressed = 0;
int pressedState = 0;
  
  float gravity = 0.7;
  
void setup(){
  size(800,600);
  ellipseMode(CENTER);
  ellipse(posX, posY, 50, 50);
}
void draw(){
  background(#8E8C8C);
   updateBall();
  //Pot Pan
  ellipse(400, 300, 20, 20);
  ellipse(400, 300, 40, 40);
  ellipse(400, 300, 60, 60);
  ellipse(400, 300, 80, 80);
  ellipse(400, 300, 100, 100);
  ellipse(400, 300, 120, 120);
  ellipse(400, 300, 140, 140);
  ellipse(400, 300, 160, 160);
  ellipse(400, 300, 180, 180);
  ellipse(400, 300, 200, 200);
  ellipse(400, 300, 201, 201);
  ellipse(400, 300, 202, 202);
  ellipse(400, 300, 203, 203);
  ellipse(400, 300, 204, 204);
  rect(500,280,150,45);
  rect(500,280,149,44);
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
  
  while(x < 10){
    noFill();
    ellipse(width/2, height/2, (x * 20), (x * 20));
    x++;
    
  }
  //egg
 ellipse(mouseX,mouseY,100,60);
 if (mousePressed) {
   background(255); //random color!!!
   ellipse(mouseX,mouseY,100,60);
   arc(mouseX-60, mouseY+40, 70, 50, 0, PI+QUARTER_PI, OPEN);
   arc(mouseX-85, mouseY-8, 60, 60, HALF_PI, PI);
   arc(mouseX-80, mouseY-8, 70, 70, PI, PI+QUARTER_PI);
   arc(mouseX-34, mouseY+2, 200, 100, PI+QUARTER_PI, TWO_PI);
   arc(mouseX+41, mouseY, 50, 50, 0, HALF_PI);
   arc(mouseX-10, mouseY+25, 100, 60, 0, HALF_PI);
   arc(mouseX-40, mouseY+45, 60, 30, 0, HALF_PI);
   
   
}
 }
 void updateBall(){
  if(posX+25 >= width){
    movementSize = movementSize * -1;
  } else if (posX-25 <= 0){
    movementSize = movementSize * -1;
  }
  posX = posX + movementSize;
  
  triangle(posX,posY,posX+20,posY-20,posX+40,posY);// (0,0,+20,-20,+40,0
}
