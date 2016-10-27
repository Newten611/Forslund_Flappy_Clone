class Title extends GameState {
  
  void onEnter() {
    println("Entering " + this + " state.");
  }

  void onSustain() {
    game.titleScreen();
  }

  void onExit() {
    println("Exiting " + this + " state.");
  }

  void onMousePressed() {
    sm.set("Playing");
  }

  void onKeyReleased() {
  }
}