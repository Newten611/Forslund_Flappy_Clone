class Playing extends GameState {
  
  void onEnter() {
    println("Entering " + this + " state.");
    timer.start();
  }

  void onSustain() {
    game.draw();
  }

  void onExit() {
    println("Exiting " + this + " state.");
    timer.stop();
  }

  void onMousePressed() {
    game.onMousePressed();
  }

  void onKeyReleased() {
    game.onKeyReleased();
  }
}