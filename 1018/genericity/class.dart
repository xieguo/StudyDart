/**
 * 类定义泛型
 * 一种方案是使用 Object 类型
 * 另一种方案就是使用泛型
 **/
void main() {
  // Object 方式
  Location l1 = Location(10, 20);
  print(l1.x.runtimeType); // int

  Location l2 = Location('10', '20');
  print(l2.x.runtimeType); // String

  // 泛型方式
  Location1 l3 = Location1<int>(10, 20);
  print(l3.x.runtimeType); // int

  Location1 l4 = Location1<String>('10', '20');
  print(l4.x.runtimeType); // StringS

  // 在函数中使用泛型
  var names = ["why", "kobe"];
  var first = getFirst(names);
  print('$first ${first.runtimeType}'); // why String
}

class Location {
  Object x;
  Object y;

  Location(this.x, this.y);
}

class Location1<T> {
  T x;
  T y;

  Location1(this.x, this.y);
}

T getFirst<T>(List<T> ts) {
  return ts[0];
}
