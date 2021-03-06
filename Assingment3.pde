void setup() {
  size(1280,800);
  strokeWeight(9);
  stroke(20, 0);
  
}
//inspiration from this project came from the Alien franchise
void draw() {
  background(0);
  //Xenomorph
  point(640,400);
  fill(18,18,18);
  arc(640, 250, 150, 150, -PI, 0); //head
  fill(18,18,18);
  ellipse(630,400,150,150); //head
  rect(590, 250, 90, 80); //head
  arc(630, 330, 150, 300, 0, PI+QUARTER_PI, PIE); //head
  arc(638, 250, 150, 300, 0, QUARTER_PI,PIE); //head
  triangle(570, 460, 600, 490, 630, 460); //Teeth
  triangle(600, 470, 630, 490, 660, 470); 
  triangle(650, 470, 670, 490, 690, 470); 
  line(600,0,690,60); //Wires
  line(500,0,550,40);
  point(100,50); //Puncture Holes
  point(1000,400);
  
  //Random Lights in Nostromo
  beginShape(QUAD_STRIP);
  fill(75,0,0);
vertex(60,600);
  vertex(300,580);
  vertex(60,540);
  vertex(300,560);
endShape(CLOSE);

beginShape(QUAD_STRIP);
vertex(60,100);
  vertex(300,180);
  vertex(60,200);
  vertex(300,140);
endShape(CLOSE);

beginShape(QUAD_STRIP);
fill(2,203,11);
vertex(600,100);
  vertex(300,180);
  vertex(60,200);
  vertex(300,140);
endShape(CLOSE);

beginShape(QUAD_STRIP);
vertex(1000,100);
vertex(1000,200);
vertex(1015,550);
vertex(1020,245);
endShape(CLOSE);
//Gunfiring
  if (mousePressed) {
    stroke(255);
  } else {
    stroke(0);
  }
  //Crosshair
  fill(255,0,0);
  rect(mouseX-13,20+mouseY,25,50);
  rect(mouseX-13,mouseY-70,25,50);
  rect(mouseX-70,mouseY-10,50,25);
  rect(mouseX+20,mouseY-10,50,25);
  ellipse(mouseX,mouseY,100,100);
  
}
