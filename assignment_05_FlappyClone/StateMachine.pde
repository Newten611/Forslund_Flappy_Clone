import java.util.*;

class StateMachine<E extends State> {
  public E current;
  public E previous;
  private Map<String, E> states;

  StateMachine(E... n) {
    states = new HashMap<String, E>();
    int size = n.length;
    for (int i = 0; i < size; ++i) {
      this.states.put(n[i].toString(), n[i]);
    }
    if (size > 0) {
      this.set(n[0]);
    }
  }

  public String toString() {
    return this.states.values().toString();
  }

  public Collection<E> get() {
    return this.states.values();
  }

  public E get(String s) {
    return this.states.get(s);
  }

  public void set(String s) {
    this.set(this.states.get(s));
  }

  void set(E s) {
    this.previous = this.current;
    this.current = s;
    if (this.previous != null) {
      this.previous.onExit();
    }
    this.current.onEnter();
  }
}