import 'linkedList.dart';
import 'node.dart';

void main() {

  LinkedList<int> linkedList = LinkedList<int>();

  linkedList.addNode(1);
  linkedList.addNode(2);
  linkedList.addNode(3);
  linkedList.addNode(4);
  linkedList.addNode(5);
  linkedList.addNode(6);
  linkedList.addNode(7);  
  linkedList.addNode(8);
  print("Challenge 1: Print in Reverse");
  linkedList.printInReverse();

  print("Challenge 2: Find the Middle Node");
  Node<int> middleNode = linkedList.findMiddleNode();
  print("Middle Node: ${middleNode.data}");

  print("Challenge 3: Reverse a Linked List");
  linkedList.reverseList();
  linkedList.printList();

  print("Challenge 4: Remove All Occurrences");
  linkedList.addNode(2);
  linkedList.addNode(6);
  linkedList.addNode(2);
  print("Original List:");
  linkedList.printList();
  linkedList.removeAllOccurrences(2);
  print("List after removing all occurrences of 2:");
  linkedList.printList();

}
