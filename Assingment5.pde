int posX = 100;
  int posY = (height/2);
  int movementSize = 1;
  int pressed = 0;
int pressedState = 0;
  
  float gravity = 0.7;
  
void setup(){
size(800, 600);
ellipseMode(CENTER);
  ellipse(posX, posY, 50, 50);
}

void draw(){
  background(8,11,107);
  
  updateBall();
  fill(57,99,35);
  rect(0,150,800,600);
  fill(255);
  rect(310,430,140,50); //skeleton
  ellipse(380,300,300,300); //skeleton
  line(330,479,330,442); //skeleton
  line(360,479,360,450); //skeleton
  line(390,479,390,450); //skeleton
  line(420,479,420,445); //skeleton
  fill(0,0,0);
  ellipse (310,300,60,60); //skeleton eyes
  ellipse (450,300,60,60); //skeleton eyes
  triangle(360,370,380,350,400,370); //skeleton nose
  //operations of the skeleton eyes lighting up
  if (pressedState == 1){
    fill(234,0,22);
    ellipse (310,300,30,30);
    ellipse (450,300,30,30);
  } else {
  fill(0,0,0);
  ellipse (310,300,30,30);
ellipse (450,300,30,30);}
}
//opertaions for the moon
void updateBall(){
  if(posX+25 >= width){
    movementSize = movementSize * -1;
  } else if (posX-25 <= 0){
    movementSize = movementSize * -1;
  }
  posX = posX + movementSize;
  fill(242,232,118);
  ellipse(posX, posY, 70, 70);
}
void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
