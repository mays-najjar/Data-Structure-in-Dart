class Stack<T> {
  List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return _items.removeLast();
  }

  bool get isEmpty => _items.isEmpty;
}
