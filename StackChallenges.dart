import 'stack.dart';

void main() {
  Stack<int> myStack = Stack<int>();
  Stack<String> myStack2 = Stack<String>();

  List<int> intList = [1, 2, 3, 4, 5];
  List<int> reversedList = myStack.reverseListWithStack(intList);
  List<String> stringList = ['Ali', 'Omar', 'Kamel' ];
  List<String> reversedStringList = myStack2.reverseListWithStack(stringList);

  print("Challenge 1: Reverse a List");
  print(reversedList);
  print(reversedStringList);

  String exampleStr = "((Hello)  (Mays))";
  print("Challenge 2: Balance the Parentheses ");
  bool result = myStack.isBalanced(exampleStr);
  if (result) {
    print("Parentheses are balanced.");
  } else {
    print("Parentheses are not balanced.");
  }
}

