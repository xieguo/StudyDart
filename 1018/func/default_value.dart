// 函数的可选参数和命名参数都可以设置默认值
// 默认值必须是编译时常量，如果没有提供默认值，默认值为 null

void printUser(String name, [int age = 30]) {
  print("name: $name age: $age");
}

void printUser2(String name, {int age = 30}) {
  print("name: $name age: $age");
}

void main() {
  printUser("leaveC");
  printUser("leaveC", 25);

  printUser2("leaveC");
  printUser2("leaveC", age: 25);
}
