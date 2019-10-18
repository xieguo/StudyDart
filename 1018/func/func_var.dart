// 变量可以赋予函数类型
// 函数可以作为参数传递给另外一个函数

void printValue(int value) {
  print("value is $value");
}

void printUser(String name, [int age = 30]) {
  print("name: $name, age:$age");
}

void main() {
  var printFunction = printUser;
  printFunction("leaveC");
  print(printFunction);

  var list = [1, 2, 3];
  list.forEach(printValue);
}
