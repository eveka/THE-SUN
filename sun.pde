float x = 0;
float y = 0;
float x1 = 300;
float y1 = 25;
float cpx = 75; 
float cpx1 = 75;
float cpy = 925;
float cpy1 = -925;
float rays[];
float cpy2 = 1425;
float y2 = 150;
void setup() {
  size(1200, 700);
}
void draw() {
  background(137);
  noFill();
  stroke(250,250,250);
  //strokeWeight(60);
  translate(width/2,height/2);
  //translate(mouseX,mouseY);
  for (int i = 0; i < 12; i++) {
    curve(cpx, cpy , mouseX,mouseY, x1, y1, cpx1, cpy1);
    curve(cpx, cpy2, x, y2, x1, y1, cpx1, cpy1);
    rotate(radians(30));
  // fill(20,30,240);
   //fill(random(30,250),30, 100);
  }
  
}
