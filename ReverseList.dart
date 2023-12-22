import 'stack.dart';

List<dynamic> reverseListWithStack(List<dynamic> lst) {  // using dynamic to allow any data type to reverse
  List<dynamic> reversedList = [];
  Stack<dynamic> stack = Stack<dynamic>();

  for (var element in lst) {
    stack.push(element);
  }
  
  while (!stack.isEmpty) {
    reversedList.add(stack.pop());
  }

  return reversedList;
}

void main() {
  List<int> intList = [1, 2, 3, 4, 5];
  List<String> stringList = ['Ali', 'Omar', 'Kamel' ];
  List<dynamic> reversedintList = reverseListWithStack(intList);
  List<dynamic> reversedStringList = reverseListWithStack(stringList);
  print(reversedintList);
  print(reversedStringList);
}
