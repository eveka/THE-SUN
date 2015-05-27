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
float speed = 1.5;
float n = millis();
float pageY;
int spin;
float degreeChange = (cos(5)*spin++);
sun[] pert;

void setup() {
  size(displayWidth, displayHeight);


  pert = new sun[3];
  pert[0] = new sun(cpx, cpy, x, y, x1, y1, cpx1, cpy1);
  pert[1] = new sun (cpx*.7, cpy*.7, x*.7, y*.7, x1*.7, y1*.7, cpx1*.7, cpy1*.7);
  pert[2] = new sun(cpx*.3, cpy*.3, x*.3, y*.3, x1*.3, y1*.3, cpx1*.3, cpy1*.3);
}

void draw() {
  if (touch) {
    pageY = touchY;
  } else {
    pageY = mouseY;
  }

  scale(2);


  noFill();
  stroke(250, 250, 250);



  background(0);
  translate(width/4, height/4);
  scale(.3);
  pert[0].update();
  pert[1].update();
  pert[2].update();
  



}
class sun {
  float cpy, cpx, cpy1, cpx1, x, y, x1, y1, degreeChange;

  sun(float _cpx, float _cpy, float _x, float _y, float _x1, float _y1, float _cpx1, float _cpy1) {
    cpx = _cpx;
    cpy = _cpy;
    x = _x;
    y = _y;
    x1 = _x1;
    y1 = _y1;
    cpx1 = _cpx1;
    cpy1 = _cpy1;
  }

  void update() {
    degreeChange = (cos(5)*spin++);

    for (int i = 0; i <13; i++) {
      curve(cpx, cpy, x, pageY, x1, y1, cpx1, cpy1);
      curve(cpx, (cpy-500), x, pageY, x1, y1, cpx1, cpy1);
      rotate(radians((tilt && tiltY > 180) ? -degreeChange : degreeChange));
    }
  
    }
}
