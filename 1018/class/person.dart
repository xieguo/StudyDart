// dart 会自动为 name 和 age 提供隐匿的 getter 和 setter 方法，全未经初始化的实例变量均为 null
// dart2 中 new 关键字成为了可选关键字，因此，可以选择省略 new 声明

class Person {
  String name;
  int age;

  // 构造函数
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 命名构造函数
  Person.getDefault() {
    this.name = "Thank";
    this.age = 30;
  }

  // 在构造函数主体运行之前初始化实例变量
  Person.getDefault2()
      : name = "Thank2",
        age = 25 {
    this.age = 30;
  }
}

// 继承
// 默认情况下，子类中的构造函数会隐式调用父类的未命名的无参数构造函数，
// 父类的构造函数在子类构造函数体的开始处被调用
// 如果父类没有未命名的无参数构造函数，则必须手动调用父类中的构造函数
// 构造函数不能被子类继承，父类中的命名构造函数不会被子类继承，
// 所以如果子类也想要拥有一个和父类一样名字的构造函数，则必须 子类自己实现这个构造函数
class Man extends Person {
  Man(String name, int age) : super(name, age);

  Man.getDefault() : super.getDefault();
}

void main() {
  var person = Person("Thank", 30);
  print("${person.name} ${person.age}"); // // Thank2, 30
  print("${person.runtimeType}"); // Person
  print("--------------------");

  var defaultPerson = Person.getDefault();
  print("${defaultPerson.name}, ${defaultPerson.age}"); // Thank2, 30
  print("${defaultPerson.runtimeType}"); // Person

  print("--------------------");
  var defaultPerson2 = Person.getDefault2();
  print("${defaultPerson2.name}, ${defaultPerson2.age}");
  print("${defaultPerson2.runtimeType}");
}
