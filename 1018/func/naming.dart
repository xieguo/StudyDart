// 命名参数，即在调用该函数时需要同时标明该参数的参数名，
// 命名参数用花括号包裹起来， 以{type paramName} 或 {paramName: type} 两种参数声明参数
// 调用命名参数时只能以 funName(paramName:paramValue) 的形式调用。
// 命名参数可传值也可以不传值，当不传值时，该参数的值为 null
void printUser(String name, {int age}) {
  print("name: $name, age: $age");
}

void printUser2(String name, {age: int}) {
  print("name: $name, age: $age");
}

void main() {
  printUser("leaveC");
  printUser("leaveC", age: 25);
  printUser2("leaveC", age: 30);
}
