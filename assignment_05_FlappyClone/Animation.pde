class Animation extends State {
  public String name;
  private List<PImage> frames;
  private int current = 0, 
    oscillation = 1, 
    interval = 20;
  private float w = 64, 
    h = 64, 
    offsetX, 
    offsetY;

  public int pivot = CENTER;

  Animation(String name) {
    this.name = name;
    this.frames = new ArrayList<PImage>();
  }

  Animation(String name, int interval) {
    this.name = name;
    this.interval = interval;
    this.frames = new ArrayList<PImage>();
  }

  Animation(String name, PImage... n) {
    this.name = name;
    this.frames = new ArrayList<PImage>();
    int size = n.length;
    for (int i = 0; i < size; ++i) {
      this.frames.add(n[i]);
    }
  }

  Animation(String name, int interval, PImage... n) {
    this.name = name;
    this.interval = interval;
    this.frames = new ArrayList<PImage>();
    int size = n.length;
    for (int i = 0; i < size; ++i) {
      this.frames.add(n[i]);
    }
  }

  public String toString() {
    return this.name;
  }

  public void add(PImage n) {
    this.frames.add(n);
  }

  public PImage remove(int i) {
    return this.frames.remove(i);
  }

  public PImage get(int i) {
    return this.frames.get(i);
  }

  void onEnter() {
  }

  void onSustain() {
    advance();
    pushStyle();
    imageMode(this.pivot);
    image(this.frames.get(current), this.offsetX, this.offsetY, this.w, this.h);
    popStyle();
  }

  void onExit() {
  }

  private void advance() {
    if (frameCount % this.interval == 0) {
      this.current += 1 * this.oscillation;
      if (this.current == this.frames.size() - 1 ||
        this.current == 0) {
        this.oscillation *= -1;
      }
    }
  }
}