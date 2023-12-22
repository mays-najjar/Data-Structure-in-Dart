import 'stack.dart';
import 'dart:io';

bool isBalanced(String str) {
  Stack<String> stack = Stack<String>();

for (String char in str.split('')) {
  if (char == '(') {
    stack.push(char); // all ( will be in this stack 
  } else if (char == ')') {  
    if (stack.isEmpty || stack.pop() != '(') {
      return false;
    }
  }
}  return stack.isEmpty;

}

void main() {
  print("Enter a string with parentheses: ");
  String userInput = stdin.readLineSync() ?? "";
  
  bool result = isBalanced(userInput);

  if (result) {
    print("Parentheses are balanced.");
  } else {
    print("Parentheses are not balanced.");
  }
}
