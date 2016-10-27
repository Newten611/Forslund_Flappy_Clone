class Bird { //<>//
  color normalColor;
  float x, 
    y, 
    radius, 
    gravity = 0.6, 
    lift = 15, 
    velocity, 
    airResistance = 0.9, 
    theta = TAU, 
    flapAngle = radians(330), 
    fallAngle = radians(30);

  private StateMachine<Animation> animator;

  Bird() {
    this.x = random(width / 8.0, width / 6.0);
    this.y = height / 2.0;
    this.radius = min(width, height) / 20.0;
    this.normalColor = color(0, 64, 204);
    this.animator = new StateMachine<Animation>();
  }

  Bird(Animation... anims) {
    this.x = random(width / 8.0, width / 6.0);
    this.y = height / 2.0;
    this.radius = min(width, height) / 20.0;
    this.normalColor = color(255);
    this.animator = new StateMachine<Animation>();
    int size = anims.length;
    for (int i = 0; i < size; ++i) {
      this.animator.states.put(anims[i].name, anims[i]);
    }
    this.animator.set(anims[0].name);
  }

  Bird(float x, float y, float r, color nc) {
    this.x = x;
    this.y = y;
    this.radius = r;
    this.normalColor = nc;
    this.animator = new StateMachine<Animation>();
  }

  Bird(float x, float y, float r, Animation... anims) {
    this.x = x;
    this.y = y;
    this.radius = r;
    this.normalColor = color(255);
    this.animator = new StateMachine<Animation>();
    int size = anims.length;
    for (int i = 0; i < size; ++i) {
      this.animator.states.put(anims[i].name, anims[i]);
    }
    this.animator.set(anims[0].name);
  }

  void draw() {
    gravity();
    groundCollision();
    ceilingCollision();
    show();
    
  }

  void show() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(this.theta);

    if (this.animator.current != null) {
      this.animator.current.onSustain();
    } else {
      pushStyle();
      ellipseMode(RADIUS);
      strokeWeight(1.5);
      stroke(255, 255, 0);
      fill(this.normalColor);
      ellipse(0, 0, this.radius, this.radius);
      line(0, 0, this.radius, 0);
      popStyle();
    }

    popMatrix();
  }

  void flap() {
    this.velocity -= this.lift;
    if (mousePressed) {
      this.theta = this.flapAngle;
    }
  }

  void gravity() {
    this.velocity += this.gravity;
    this.velocity *= this.airResistance;
    this.y += velocity;
    if (!mousePressed) {
      this.theta = this.fallAngle;
    }
  }

  void ceilingCollision() {
    if (this.y < this.radius) {
      this.y = this.radius;
      this.velocity = 0;
    }
  }

  void groundCollision() {
    if (this.y > height - this.radius) {
      this.y = height  - this.radius;
      this.velocity = 0;
      sm.set("Loss");
    }
  }

  void addAnimation(Animation a) {
    this.animator.states.put(a.name, a);
    if (this.animator.current == null) {
      this.animator.set(a.name);
    }
  }

  void addAnimation(String name, PImage... frames) {
    Animation a = new Animation(name);
    int size = frames.length;
    for (int i = 0; i < size; ++i) {
      a.frames.add(frames[i]);
    }
    this.animator.states.put(a.name, a);
    if (this.animator.current == null) {
      this.animator.set(a.name);
    }
  }

  void setCurrentAnimation(String animName) {
    this.animator.set(animName);
  }
}