// Mixins(混入功能) 相当于多继承，也就是说可以继承多个类。
// 使用 with 关键字来实现 Mixins 功能
class A {
  void funA() {
    print("function A");
  }
}

class B {
  void funcB() {
    print("function B");
  }
}

class C = A with B;

void main() {
  var c = C();
  c.funA(); // function A
  c.funcB(); // function B;
}
