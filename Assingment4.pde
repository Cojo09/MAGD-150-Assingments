int pressed = 0;
int pressedState = 0;
void setup() {
  size(1280,800);
}
//The Logical Fallacy I chose is "The Texas Sharpshooter"
//This correlation shows the correlation of a few students who drank some soda and got sick.
void draw() {
  background(255);
//All of These relate to the soda can
  fill(0);
  ellipse(640,220,150,90);
  line(565,220,565,450);
  fill(250);
  ellipse(640,450,150,90);
  line(716,220,716,450);
  ellipse(640,330,125,125);
  ellipse(610,310,20,20);
  ellipse(670,310,20,20);
  arc(640, 330, 100, 110, 0.2, PI - 0.2);
//This is the Text that shows on the Left of the can. Click the mouse to see what happens next!
  String s = "Drinking soda made a six students sick, therefore...";
  String i = "Drinking soda will make you sick";
fill(0);
text(s, 100, 300, 200, 200);

//This is where the "Magic" happens, it creates the shapes when you click on the mouse
  if (pressedState == 1) {
    text(i, 100, 350, 200, 200);
    line(600,320,620,300);
    line(600,300,620,320);
    line(660,300,680,320);
    line(680,300,660,320);
  }
 
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
