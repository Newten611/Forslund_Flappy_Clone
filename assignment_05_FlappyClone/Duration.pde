abstract class Duration {
  String name;
  int start, stop, scheduledStart, scheduledStop;
  boolean started, stopped, startScheduled, stopScheduled;

  Duration() {
    this.name = this.getClass().getSimpleName();
  }

  Duration(String n) {
    this.name = n;
  }

  public String toString() {
    return "NAME:\t" + this.name
      + "\nSTOP:\t" + nfs(this.stop, 6)
      + "\nSTART:\t" + nfs(this.start, 6)
      + "\nELAPSED:\t" + nfs(this.elapsed(), 6);
  }

  int elapsed() {
    return this.stop - this.start;
  }

  void reset() {
    this.start = 0;
    this.stop = 0;
    this.scheduledStart = 0;
    this.scheduledStop = 0;
    this.started = false;
    this.stopped = false;
    this.startScheduled = false;
    this.stopScheduled = false;
  }

  int toggle() {
    if (this.started && this.stopped) {
      this.reset();
      return this.start();
    } else if (this.started && !this.stopped) {
      return this.stop();
    } else if (!this.started && !this.stopped) {
      return this.start();
    }
    return -1;
  }

  abstract int start();
  abstract int stop();
  abstract void tick();
  abstract int scheduleStart(int n);
  abstract int scheduleStop(int n);
}