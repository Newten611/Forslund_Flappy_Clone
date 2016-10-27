abstract class GameState extends State {
  abstract void onMousePressed();
  abstract void onKeyReleased();
  // add more events as needed, for example
  // onMouseDragged, onKeyPressed, etc.
}