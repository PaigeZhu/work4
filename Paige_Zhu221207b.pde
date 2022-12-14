

void setup() {
  size(384, 510);
  background(255);
  fill(20, 12, 125);
  textSize(32);
  text("move your mouse", 40, 120);
}

void draw() {
  for (int x=0; x<38; x++) {
    for (int y=0; y<51; y++) {
      float n=noise(x/100);
      float z=abs(mouseX-pmouseX);
      color c =color(map(z,0,100,100,150),map(z,0,100,100,200),map(z,0,100,150,200),10);
      fill(c);
      noStroke();
      rect(x*100, y*100, z*10, n*1000, 28);
      color  b=color(225,225,225,50);
      fill(b);
      noStroke();
      rect(x*100+50, y*100+50, z, n*1000, 28);
    }
  }
}
