class ball {
  PVector position;
  PVector velocity;
  PVector force;
  int mass;
  
  ball(PVector p, int m) {
    position = p;
    velocity = new PVector( random( -0.5, 0.5 ), random( -0.5, 0.5 ) );
    force = new PVector(0, 0);
    mass = m;
  }
  
  void addForce(PVector f) {
    force.add(f);
  }
  
  void update() {
    PVector a = PVector.div(force, mass);
    velocity.add(a);
    position.add(velocity);
    force.set(0, 0);
  }
  
  void draw() {
    fill(random(50, 255), 0, 0);
    noStroke();
    ellipse(position.x, position.y, mass, mass);
  }
  
  void gravityCenter() {
    if(position.x + mass > width/2) {
      force.x += -0.3;
    }
    else force.x += 0.3;
    if(position.y + mass > height/2) {
      force.y += -0.3;
    }
    else force.y += 0.3;
  }
}
