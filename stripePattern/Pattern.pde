class Pattren {
  float angle, r;
  int pattern, fillCount;
  boolean draw;

  Pattren(float _angle, int _pattern, float _r) {
    this.angle=_angle;
    this.pattern=_pattern;
    this.r=_r;
    this.fillCount=0;
  }
  void display() {
    float scale=1;

    float start=0;
    for (int i=0; i<this.pattern; i++) {


      for (int j=0; j<360; j+=this.angle) {

        if (this.fillCount%2==0)fill(0);
        else fill(255);
        arc(width/2, height/2, this.r*scale*2, this.r*scale*2, radians(j+start), radians(j+this.angle+start));
        fillCount++;
      }
      scale-=.2;
      fill(255);
      ellipse(width/2, height/2, this.r*scale*2, this.r*scale*2);
      start+=this.angle/this.pattern;
    }
  }
  void stop(){
  noLoop();
  }
}

