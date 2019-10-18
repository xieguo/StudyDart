// 匿名函数即不具备函数名称的函数
void main() {
  var list = [1, 2, 3];
  list.forEach((int element) {
    print("value is: $element");
  });

  list.forEach((int element) => print("value is: $element"));
}
