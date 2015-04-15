Pattren pattern;
void setup() {
  size(400, 400);

  pattern=new Pattren(5, 2, 200);
}

void draw() {
  background(255);
  pattern.display();
  pattern.stop();
}

