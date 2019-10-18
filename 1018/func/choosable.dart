void main() {
  printUser("leavesC");
  printUser("leavesC", 25);
}

// 可选[位置]参数
void printUser(String name, [int age]) {
  print("name: $name, age: $age");
}
