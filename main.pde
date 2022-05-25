ArrayList<ball> balls;

void setup() {
  size(800, 600);
  balls = new ArrayList<ball>();
}

void draw() {
  background(0);
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).update();
    balls.get(i).draw();
    balls.get(i).gravityCenter();
  }
}

void mousePressed() {
  int mass = round(random(5, 30));
  PVector position = new PVector(mouseX, mouseY);
  balls.add(new ball(position, mass));
}
