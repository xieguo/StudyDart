// 抽象类 与 PHP 语言中的抽象类一样，抽象类里只有方法名，没有方法体
// 抽象类用关键字 abstract 定义类, 用 extends 实现抽象类中的方法

// 数据库抽象类
abstract class DataBaseOperate {
  void insert(); // 定义插入的方法
  void delete(); // 定义删除的方法
  void update(); // 定义更新的方法
  void query(); // 定义查询的方法
}

// 数据库实现类
class DataBaseOperateTmpl extends DataBaseOperate {
  void insert() {
    print("实现了插入的方法");
  }

  void delete() {
    print("实现了删除的方法");
  }

  void update() {
    print("实现了更新的方法");
  }

  void query() {
    print("实现了查询的方法");
  }
}

void main() {
  var db = DataBaseOperateTmpl();

  db.insert();
  db.delete();
  db.update();
  db.query();
}
