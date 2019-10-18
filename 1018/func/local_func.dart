// 局部函数即嵌套于其他函数内部的函数
void main() {
  var list = [1, 2, 3];
  list.forEach((int element) {
    int add(int value1, int value2) {
      return value1 + value2;
    }

    print("value is: ${add(element, 1)}");
  });
}
