abstract class Game {
  abstract void draw();
  abstract void reset();
  abstract void onMousePressed();
  abstract void onKeyReleased();
  abstract Feedback feedback();
}