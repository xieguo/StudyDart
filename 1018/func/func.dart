void main() {
  var printUserFun = printName;
  print("leavesC");

  var list = ["leavesc", "Java"];
  list.forEach(printUserFun);

  var sayHelloFun = (String name) => print("$name, hello");
  sayHelloFun("leavesc");
}

void printName(String name) {
  print("name: $name");
}
