class Loss extends GameState {

  void onEnter() {
    println("Entering " + this + " state.");
    fb = game.feedback();
  }

  void onSustain() {
    game.lossScreen();
  }

  void onExit() {
    println("Exiting " + this + " state.");
    game.reset();
  }

  void onMousePressed() {
    sm.set("Title");
  }

  void onKeyReleased() {
  }
}