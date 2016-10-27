abstract class State {
  abstract void onEnter();
  abstract void onSustain();
  abstract void onExit();
  
  public String toString() {
    return this.getClass().getSimpleName();
  }
}