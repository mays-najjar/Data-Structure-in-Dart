import 'node.dart';

class LinkedList<T> {
  Node<T>? head = null;

  void addNode(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node<T>? current = head; 
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }


  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printInReverse() {
    _printInReverse(head);
  }

  void _printInReverse(Node<T>? node) {
    if (node == null) {
      return;
    }
    _printInReverse(node.next);
    print(node.data);
  }


  Node<T> findMiddleNode() {
    Node<T>? slowPointer = head;
    Node<T>? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer?.next;
      fastPointer = fastPointer.next?.next;
    }

    return slowPointer!;
  }

void reverseList() {
    Node<T>? prev = null;
    Node<T>? current = head;
    Node<T>? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }

  void removeAllOccurrences(T target) {
    while (head != null && head!.data == target) {
      head = head!.next;
    }

    Node<T>? current = head;
    Node<T>? prev;

    while (current != null) {
      if (current.data == target) {
        prev?.next = current.next;
      } else {
        prev = current;
      }
      current = current.next;
    }
  }
}

