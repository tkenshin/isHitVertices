PVector p[] = {};
PVector p1, p2; 

float x, y, r;
final int index = 2;

boolean isHitEndPoint(float px, float py, float ex, float ey, float er) {
  float dx = ex - px;
  float dy = ey - py;

  return (dx*dx) + (dy*dy) < er*er;
}

void setup() {
  size(500, 500);

  p1 = new PVector(height / 3, 20);
  p2 = new PVector(height / 3, width - 20);
  
  p = new PVector[] {
    p1, p2
    
  };
  
}

void draw() {
  background(255);
  x = mouseX;
  y = mouseY;
  r = 20;

  // 範囲
  ellipse(x, y, r*2, r*2);

  // 上の端点
  ellipse(p1.x, p1.y, 10, 10);
  // 下の端点
  ellipse(p2.x, p2.y, 10, 10);

  line(p1.x, p1.y, p2.x, p2.y);
  
  for(int i = 0; i < index; i++) {
    if (isHitEndPoint(p[i].x, p[i].y, x, y, r)) {
    println("vertices[" + i + "] hit");
  }
    
  }
}